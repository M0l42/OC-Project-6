
CREATE SEQUENCE public.aliment_id_seq;

CREATE TABLE public.Aliment (
                id INTEGER NOT NULL DEFAULT nextval('public.aliment_id_seq'),
                Name VARCHAR(100) NOT NULL,
                Price NUMERIC(9,2) NOT NULL,
                Category VARCHAR(45) NOT NULL,
                Description VARCHAR(1000),
                Picture VARCHAR(500),
                CONSTRAINT aliment_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.aliment_id_seq OWNED BY public.Aliment.id;

CREATE INDEX aliment_idx
 ON public.Aliment
 ( Category );

CREATE SEQUENCE public.ingredient_id_seq;

CREATE TABLE public.Ingredient (
                id INTEGER NOT NULL DEFAULT nextval('public.ingredient_id_seq'),
                Name VARCHAR(100) NOT NULL,
                Unit VARCHAR(45) NOT NULL,
                Price_per_unit NUMERIC(9,2) NOT NULL,
                SoldOut_treshold NUMERIC(9,2) NOT NULL,
                CONSTRAINT ingredient_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.ingredient_id_seq OWNED BY public.Ingredient.id;

CREATE TABLE public.Recipe (
                Aliment_id INTEGER NOT NULL,
                Ingredient_id INTEGER NOT NULL,
                Quantity NUMERIC(9,2) NOT NULL,
                is_public BOOLEAN NOT NULL,
                CONSTRAINT recipe_pk PRIMARY KEY (Aliment_id, Ingredient_id)
);


CREATE SEQUENCE public.adress_id_seq;

CREATE TABLE public.Adress (
                id INTEGER NOT NULL DEFAULT nextval('public.adress_id_seq'),
                Name VARCHAR(100) NOT NULL,
                Adress VARCHAR(200) NOT NULL,
                ZipCode VARCHAR(10) NOT NULL,
                City VARCHAR(100) NOT NULL,
                CONSTRAINT adress_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.adress_id_seq OWNED BY public.Adress.id;

CREATE SEQUENCE public.restaurant_id_seq;

CREATE TABLE public.Restaurant (
                id INTEGER NOT NULL DEFAULT nextval('public.restaurant_id_seq'),
                Name VARCHAR(100) NOT NULL,
                Description VARCHAR(1000),
                Phone VARCHAR(20),
                Picture VARCHAR(500),
                Adress_id INTEGER NOT NULL,
                CONSTRAINT restaurant_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.restaurant_id_seq OWNED BY public.Restaurant.id;

CREATE TABLE public.Stock (
                Restaurant_id INTEGER NOT NULL,
                Ingredient_id INTEGER NOT NULL,
                Quantity NUMERIC(9,2) NOT NULL,
                CONSTRAINT stock_pk PRIMARY KEY (Restaurant_id, Ingredient_id)
);


CREATE SEQUENCE public.person_id_seq;

CREATE TABLE public.Person (
                id INTEGER NOT NULL DEFAULT nextval('public.person_id_seq'),
                Name VARCHAR(100) NOT NULL,
                Last_name VARCHAR(100) NOT NULL,
                Password VARCHAR(255) NOT NULL,
                Email VARCHAR(200) NOT NULL,
                CONSTRAINT person_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.person_id_seq OWNED BY public.Person.id;

CREATE SEQUENCE public.user_id_seq;

CREATE TABLE public.Employee (
                Person_id INTEGER NOT NULL DEFAULT nextval('public.user_id_seq'),
                Role VARCHAR(45) NOT NULL,
                Restaurant_id INTEGER NOT NULL,
                CONSTRAINT employee_pk PRIMARY KEY (Person_id)
);


ALTER SEQUENCE public.user_id_seq OWNED BY public.Employee.Person_id;

CREATE SEQUENCE public.user_id_seq;

CREATE TABLE public.Delivery_Men (
                Employe_id INTEGER NOT NULL DEFAULT nextval('public.user_id_seq'),
                Vehicle VARCHAR(45) NOT NULL,
                CONSTRAINT delivery_men_pk PRIMARY KEY (Employe_id)
);


ALTER SEQUENCE public.user_id_seq OWNED BY public.Delivery_Men.Employe_id;

CREATE SEQUENCE public.user_id_seq;

CREATE TABLE public.Customer (
                Person_id INTEGER NOT NULL DEFAULT nextval('public.user_id_seq'),
                Phone VARCHAR(20),
                Adress_id INTEGER NOT NULL,
                CONSTRAINT customer_pk PRIMARY KEY (Person_id)
);


ALTER SEQUENCE public.user_id_seq OWNED BY public.Customer.Person_id;

CREATE SEQUENCE public.purchase_id_seq;

CREATE TABLE public.Purchase (
                id INTEGER NOT NULL DEFAULT nextval('public.purchase_id_seq'),
                State VARCHAR(45) NOT NULL,
                Date TIMESTAMP NOT NULL,
                Paid_Price NUMERIC(9,2),
                Restaurant_id INTEGER NOT NULL,
                Person_id INTEGER NOT NULL,
                Adress_id INTEGER NOT NULL,
                CONSTRAINT purchase_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.purchase_id_seq OWNED BY public.Purchase.id;

CREATE INDEX order_idx
 ON public.Purchase
 ( State, Restaurant_id, Person_id );

CREATE SEQUENCE public.purchase_aliment_id_seq;

CREATE TABLE public.Purchase_Aliment (
                id INTEGER NOT NULL DEFAULT nextval('public.purchase_aliment_id_seq'),
                Purchase_id INTEGER NOT NULL,
                Aliment_id INTEGER NOT NULL,
                CONSTRAINT purchase_aliment_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.purchase_aliment_id_seq OWNED BY public.Purchase_Aliment.id;

ALTER TABLE public.Recipe ADD CONSTRAINT aliment_recipe_fk
FOREIGN KEY (Aliment_id)
REFERENCES public.Aliment (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Purchase_Aliment ADD CONSTRAINT aliment_order_aliment_fk
FOREIGN KEY (Aliment_id)
REFERENCES public.Aliment (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Stock ADD CONSTRAINT ingredient_stock_fk
FOREIGN KEY (Ingredient_id)
REFERENCES public.Ingredient (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Recipe ADD CONSTRAINT ingredient_recipe_fk
FOREIGN KEY (Ingredient_id)
REFERENCES public.Ingredient (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Customer ADD CONSTRAINT adress_customer_fk
FOREIGN KEY (Adress_id)
REFERENCES public.Adress (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Restaurant ADD CONSTRAINT adress_restaurant_fk
FOREIGN KEY (Adress_id)
REFERENCES public.Adress (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Purchase ADD CONSTRAINT adress_order_fk
FOREIGN KEY (Adress_id)
REFERENCES public.Adress (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Stock ADD CONSTRAINT restaurant_stock_fk
FOREIGN KEY (Restaurant_id)
REFERENCES public.Restaurant (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Purchase ADD CONSTRAINT restaurant_order_fk
FOREIGN KEY (Restaurant_id)
REFERENCES public.Restaurant (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Employee ADD CONSTRAINT restaurant_employee_fk
FOREIGN KEY (Restaurant_id)
REFERENCES public.Restaurant (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Customer ADD CONSTRAINT user_customer_fk
FOREIGN KEY (Person_id)
REFERENCES public.Person (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Employee ADD CONSTRAINT user_employee_fk
FOREIGN KEY (Person_id)
REFERENCES public.Person (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Delivery_Men ADD CONSTRAINT employee_delivery_men_fk
FOREIGN KEY (Employe_id)
REFERENCES public.Employee (Person_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Purchase ADD CONSTRAINT customer_order_fk
FOREIGN KEY (Person_id)
REFERENCES public.Customer (Person_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Purchase_Aliment ADD CONSTRAINT order_order_aliment_fk
FOREIGN KEY (Purchase_id)
REFERENCES public.Purchase (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
