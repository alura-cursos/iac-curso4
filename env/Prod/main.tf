module "Producao" {
  source = "../../Infra"

  nome = "producao"
  descricao = "aplicacao-de-producao"
  max = 5
  maquina = "t2.micro"
  ambiente = "ambiante-de-producao"
}