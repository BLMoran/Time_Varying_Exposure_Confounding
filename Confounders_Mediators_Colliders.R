# Generate DAG explaining Confounders, Mediators and COlliders

library(ggdag)

confounder_dag <- dagify(
  Outcome ~ Exposure,
  Exposure ~ Confounder,
  Outcome ~ Confounder,
  coords = list(
    x = c(Exposure = 0, Confounder = 1, Outcome = 2),
    y = c(Exposure = 0, Confounder = 1.5, Outcome = 0)
  )
)

ggdag_classic(confounder_dag) + theme_dag_blank()

mediator_dag <- dagify(
  Outcome ~ Exposure,
  Confounder ~ Exposure,
  Outcome ~ Confounder,
  coords = list(
    x = c(Exposure = 0, Confounder = 1, Outcome = 2),
    y = c(Exposure = 0, Confounder = 1.5, Outcome = 0)
  )
)

ggdag_classic(mediator_dag) + theme_dag_blank() 


