INSERT INTO public.Adress(Name,Adress,ZipCode,City) VALUES ('Pizzaria Manosque','123 rue corsair','04100','Manosque'),('Pizzaria Marseille','3 avenue de la caserne','13003','Marseille'),('Pizzaria Aix-En-Provence','42 Place Jean le bleu','13080','Aix-En-Provence'),('Maison Nathan','7 boulevard St-Michel','13015','Marseille'),('Maison Diana','15 rue Bolton','13080','Aix-En-Provence'),('Maison Nathan','7 boulevard St-Michel','13015','Marseille');

INSERT INTO public.Restaurant(Name,Description,Phone,Picture,Adress_id) VALUES ('Pizza Manosque','Meilleurs pizza de Manosque !','0123456789',Null,1),('Pizza Marseille','Meilleurs pizza de Marseille !','0123456789',Null,2),('Pizza Aix-En-Provence','Meilleurs pizza de Aix-En-Provence !','0123456789',Null,3);

INSERT INTO public.Person(Name,Last_name,Password,Email) VALUES ('Nathan','Boukobza','123password','nathan@email.com'),('Diana','Cajes','123password','Diana@email.com'),('Bob','Le Bricoleur','123password','bob@email.com'),('Ryan','Reynolds','123password','ryan@email.com'),('Jacob','Boukobza','123password','jacob@email.com'),('Pierre','Paoli','123password','pierre@email.com'),('Paul','Paoli','123password','paul@email.com'),('Enzo','Orlando','123password','enzo@email.com');

INSERT INTO public.Customer(Person_id,Phone,Adress_id) VALUES (1,'0123456789',4),(2,'0123456789',5);

INSERT INTO public.Employee(Person_id,Role,Restaurant_id) VALUES (3,'Pizzaiolo',1),(4,'Pizzaiolo',2),(5,'Pizzaiolo',3),(6,'Delivery',1),(7,'Delivery',2),(8,'Delivery',3);

INSERT INTO public.Delivery_men(Employe_id,Vehicle) VALUES (4,'auto'),(5,'auto'),(6,'scooter');

INSERT INTO public.Aliment(Name,Price,Category,Description,Picture) VALUES ('Pizza Fromage',9.5,'Pizza',Null,Null),('Pizza Bolognaise',10.0,'Pizza',Null,Null),('Pizza Chèvre Miel',12.5,'Pizza',Null,Null),('Coca Cola 1.5L',3,'Boisson',Null,Null);

INSERT INTO public.Ingredient(Name,Unit,Price_per_unit,SoldOut_treshold) VALUES ('Farine','g',0.01,1000),('Sel','g',0.01,100),('Emmental','g',0.01,1000),('Chèvre','g',0.5,500),('Sauce Tomate','g',0.1,1000),('Sauce Crèmiare','g',0.2,1000),('Miel','g',0.5,100),('Viande de Boeuf','g',0.5,500),('Olive','piece',0.05,10),('Ognons','g',0.2,500),('Coca Cola 1.5L','piece',1,5);

INSERT INTO public.Recipe(Aliment_id,Ingredient_id,Quantity,is_public) VALUES (1,1,150.0,True),(1,2,30.0,True),(1,3,50.0,True),(1,5,50.0,True),(1,9,4.0,True),(2,1,150.0,True),(2,2,30.0,True),(2,3,50.0,True),(2,5,50.0,True),(2,8,50.0,True),(2,9,4.0,True),(2,10,10.0,True),(3,1,150.0,True),(3,2,30.0,True),(3,3,50.0,True),(3,4,20.0,True),(3,6,30.0,True),(3,7,10.0,True),(3,9,4.0,True),(3,10,10.0,True),(4,11,1.0,False);

INSERT INTO public.Stock(Restaurant_id,Ingredient_id,Quantity) VALUES (1,1,100000.0),(1,2,10000.0),(1,3,10000.0),(1,4,5000.0),(1,5,10000.0),(1,6,10000.0),(1,7,5000.0),(1,8,10000.0),(1,9,500.0),(1,10,5000.0),(1,11,0.0),(2,1,100000.0),(2,2,10000.0),(2,3,10000.0),(2,4,5000.0),(2,5,7.0),(2,6,10000.0),(2,7,5000.0),(2,8,10000.0),(2,9,500.0),(2,10,5000.0),(2,11,20.0),(3,1,100000.0),(3,2,10000.0),(3,3,10000.0),(3,5,10000.0),(3,8,10000.0),(3,9,500.0),(3,10,5000.0),(3,11,20.0);

INSERT INTO public.Purchase(State,Date,Paid_Price,Restaurant_id,Person_id,Adress_id) VALUES ('Delivered','2020-06-06 15:00:01',22.5,1,1,6),('On-Hold','2020-06-06 15:07:53',25.0,1,2,6),('In Preparation','2020-06-06 15:04:24',9.5,1,1,5);

INSERT INTO public.Purchase_Aliment(Purchase_id,Aliment_id) VALUES (1,1),(1,2),(1,4),(2,1),(2,1),(2,4),(2,4),(3,1);
