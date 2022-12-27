CREATE TABLE
  public.tokens (
    id serial NOT NULL,
    user_id integer NULL,
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    token_hash bytea NOT NULL,
    created_at timestamp without time zone NOT NULL DEFAULT now(),
    updated_at timestamp without time zone NOT NULL DEFAULT now(),
    expiry timestamp without time zone NOT NULL
  );

ALTER TABLE
  public.tokens
ADD
  CONSTRAINT tokens_pkey PRIMARY KEY (id);

ALTER TABLE
  public.tokens
ADD
  CONSTRAINT "tokens_relation_1" FOREIGN KEY ("user_id") REFERENCES "public"."users" ("id") ON UPDATE CASCADE ON DELETE CASCADE;