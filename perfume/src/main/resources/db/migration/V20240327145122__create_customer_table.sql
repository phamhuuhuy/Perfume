CREATE TABLE customer (
    id                      uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    name                    VARCHAR,
    email                   VARCHAR,
    phone                   VARCHAR,
    address                 VARCHAR,
    date_of_birth           DATE,
    gender                  VARCHAR,
    membership              VARCHAR,
    note                    VARCHAR,
    create_date             TIMESTAMP WITH TIME ZONE,
    update_date             TIMESTAMP WITH TIME ZONE
);

CREATE INDEX IF NOT EXISTS idx_id_customer_table ON customer (id)