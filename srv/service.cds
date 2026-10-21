using { db } from '../db/schema';

service ServicoCinema {
    entity Filmes as projection on db.Filmes;
    entity Atores as projection on db.Atores;
    entity Atores2Filmes as projection on db.Atores2Filmes;
}