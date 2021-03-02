defmodule Rocketpay.Repo.Migrations.CreateUserTable do
  use Ecto.Migration
  #Migration é interface direta com o BD.
  #Não é o BD em si, mas como o programa se relaciona com o BD.
  #Igual entity
  def change do
    create table :users do
      add :name, :string
      add :age, :integer
      add :email, :string
      add :password_hash, :string
      add :nickname, :string

      #Ao chamar essa função num migration o ecto automaticamente cria
      #As colunas de updatedat, insertedat que são datas de inserção e update
      timestamps()
    end

    #Criar índice unicidade na tabela user e coluna e-mail, separadamente
    create unique_index(:users, [:email])
    create unique_index(:users, [:nickname])

    #caso migração
    #def up do

    #end

    #caso rollback
    #def down do

    #end
  end
end
