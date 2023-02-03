library('MASS')
library('mlr3')
library('mlr3learners')
library('mlr3pipelines')
library('mlr3tuning')
library('paradox')

df<-Boston

# Setup the task, the aggregate measure a
task <- TaskRegr$new('boston', backend=df, target = 'medv')
measure <- msr('regr.mse')

# Setup a train test split
set.seed(1)
train_set <- sample(task$nrow, 0.7 * task$nrow) 
test_set <- setdiff(seq_len(task$nrow), train_set)

#Ridge Regression pipeline with specific penalty term lambda
learner_ridge <- lrn('regr.glmnet') 
learner_ridge$param_set$values <- list(alpha = 0, lambda = 0.03)
gr_ridge <- po('scale') %>>%
  po('imputemean') %>>%
  po(learner_ridge)
glrn_ridge<- GraphLearner$new(gr_ridge)
glrn_ridge$train(task, row_ids = train_set)
glrn_ridge$predict(task, row_ids = test_set)$score() 

# Ridge Regression pipeline with tuning lambda using cross-validation

# First Set up tuning environment
tune_lambda <- ParamSet$new (list(
  ParamDbl$new('regr.glmnet.lambda', lower = 0.001, upper = 2)
))
tuner<-tnr('grid_search')
terminator <- trm('evals', n_evals = 20)

# Now define the pipeline withe free lambda
learner_ridge2 <- lrn('regr.glmnet') 
learner_ridge2$param_set$values <- list(alpha = 0)
gr_ridge2 <- po('scale') %>>%
  po('imputemean') %>>%
  po(learner_ridge2)
glrn_ridge2 <- GraphLearner$new(gr_ridge2)

#Put everything together in a new learner
at_ridge <- AutoTuner$new(
  learner = glrn_ridge2,
  resampling = rsmp('cv', folds = 3),
  measure = measure,
  search_space = tune_lambda,
  terminator = terminator,
  tuner = tuner
)

#Train the learner on the training data and get the measure from the test
at_ridge$train(task, row_ids = train_set)
at_ridge$predict(task, row_ids = test_set)$score() 


# Repeat with Random forests
learner_rf <- lrn('regr.ranger') 
learner_rf$param_set$values <- list(min.node.size = 4)
gr_rf <- po('scale') %>>%
  po('imputemean') %>>%
  po(learner_rf)
glrn_rf <- GraphLearner$new(gr_rf)
tune_ntrees <- ParamSet$new (list(
  ParamInt$new('regr.ranger.num.trees', lower = 50, upper = 600)
))
at_rf <- AutoTuner$new(
  learner = glrn_rf,
  resampling = rsmp('cv', folds = 3),
  measure = measure,
  search_space = tune_ntrees,
  terminator = terminator,
  tuner = tuner
)
at_rf$train(task, row_ids = train_set)
at_rf$predict(task, row_ids = test_set)$score() 