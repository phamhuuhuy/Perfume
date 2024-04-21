CREATE TABLE transaction_product (
    id                      uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    transaction_id          uuid,
    product_id              uuid,
    quantity                INTEGER,
    price                   INTEGER,
    create_date             TIMESTAMP WITH TIME ZONE,
    update_date             TIMESTAMP WITH TIME ZONE,
    CONSTRAINT "fk_transaction_id_transaction_table" FOREIGN KEY ("transaction_id") REFERENCES "transaction" ("id"),
    CONSTRAINT "fk_product_id_product_table" FOREIGN KEY ("product_id") REFERENCES "product" ("id"),
    CONSTRAINT UC_TransactionProduct UNIQUE(transaction_id, product_id)
);

CREATE INDEX IF NOT EXISTS idx_id_transaction_product ON transaction_product (id)