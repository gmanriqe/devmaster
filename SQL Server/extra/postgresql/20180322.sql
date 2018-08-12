select * from nasca.ficha 

ALTER TABLE nasca.ficha drop column estado

-- CREACION DE COLUMNA estado
ALTER TABLE nasca.ficha ADD COLUMN estado character varying(2) NOT NULL DEFAULT 'FV';


select estado,codencuestador, manzana, lote, * from nasca.ficha
order by manzana, lote asc
where codencuestador is not null and  medidas_fachada is not null


update nasca.ficha
set estado='FI'
where codencuestador is null and  medidas_fachada is null


select * from nasca.ficha
where codencuestador is not null and  medidas_fachada is not null

