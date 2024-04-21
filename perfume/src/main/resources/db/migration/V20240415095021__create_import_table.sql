CREATE TABLE import (
    id                      uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    supplier_id             uuid,
    product_id              uuid,
    quantity                INTEGER,
    price                   INTEGER,
    create_date             DATE,
    update_date             TIMESTAMP WITH TIME ZONE,
    status                  VARCHAR,
    CONSTRAINT "fk_supplier_id_supplier_table" FOREIGN KEY ("supplier_id") REFERENCES "supplier" ("id"),
    CONSTRAINT "fk_product_id_product_table" FOREIGN KEY ("product_id") REFERENCES "product" ("id"),
    CONSTRAINT UC_Import UNIQUE(supplier_id, product_id, create_date)
);

CREATE INDEX IF NOT EXISTS idx_id_import ON import (id)