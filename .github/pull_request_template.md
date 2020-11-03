

# load the data -----------------------------------------------------------

df <- datasets::infert

head(df)
# create logistic regression model ----------------------------------------

logistic_model <- glm(case ~ age + education, family = "binomial",
                      data = df)


# get predictions ---------------------------------------------------------

prediction <- predict(logistic_model, df)


# probability scale -------------------------------------------------------

inv_log <- inverse_logit(prediction)
