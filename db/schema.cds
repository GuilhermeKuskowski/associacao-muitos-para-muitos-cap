using {cuid} from '@sap/cds/common';

namespace db;
entity Filmes: cuid {
    titulo: String;
    Ator: Association to many Atores2Filmes on Ator.filme = $self;
}

entity Atores2Filmes: cuid {
    filme: Association to Filmes;
    ator : Association to Atores;
}

entity Atores: cuid {
    nome: String;
    idade: Integer;
    Filmes: Association to many Atores2Filmes on Filmes.ator = $self;
}