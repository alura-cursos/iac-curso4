module "Homologacao" {
  source = "../../Infra"

  nome = "Homologacao"
  descricao = "Aplicacao-de-homologacao"
  max = 3
  maquina = "t2.micro"
  ambiente = "Ambiante-de-homologacao"
}