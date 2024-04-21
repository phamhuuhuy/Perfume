CREATE TABLE product (
    id                      uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    name                    VARCHAR,
    category                VARCHAR,
    type                    VARCHAR,
    brand                   VARCHAR,
    price                   INTEGER,
    quantity                INTEGER,
    create_date             TIMESTAMP WITH TIME ZONE,
    update_date             TIMESTAMP WITH TIME ZONE
);

CREATE INDEX IF NOT EXISTS idx_id_product ON product (id)