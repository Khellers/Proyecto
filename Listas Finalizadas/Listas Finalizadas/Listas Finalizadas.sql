create database Listas1
use Listas1

CREATE TABLE estudiantes (
    cedula VARCHAR(15) PRIMARY KEY,
    nombre VARCHAR(20),
    primer_apellido VARCHAR(25),
    segundo_apellido VARCHAR(25),
    especialidad INT NULL,
    CelularE VARCHAR(8),
    CorreoE VARCHAR(100),
    Nombre_Encargado VARCHAR(20),
    Apellido_Encargado VARCHAR(25),
    Apellido2_Encargado VARCHAR(25),
    Numero_Encargado VARCHAR(8),
    Correo_Encargado VARCHAR(100),
    tipoEstudiante VARCHAR(1),

);

CREATE TABLE Asistencia (
    IdAsistencia INT PRIMARY KEY,
    EstudianteCedula VARCHAR(15),
    MaterialD INT,
    Fecha DATE,
    Estado VARCHAR(2),
    CONSTRAINT FKEstudiantesCedula FOREIGN KEY (EstudianteCedula) REFERENCES estudiantes (cedula)
);

CREATE TABLE Seccion (

    IdSeccion INT,
	cedula varchar(15),
    ProfesorGuia VARCHAR(15),
	a�o varchar(4),
	primary key (IdSeccion,cedula,ProfesorGuia,a�o),
    CONSTRAINT FKSeccioncedula FOREIGN KEY (cedula) REFERENCES estudiantes (cedula)
);

--Secciones 
--7-1
insert into Seccion(IdSeccion,cedula,ProfesorGuia,a�o) values
(71,'121160700','Andres Segura Araya','2024');

(108A,'','  ','2024');
--10-1
insert into Seccion(IdSeccion,cedula,ProfesorGuia,a�o) values
(101,'120300536','Nancy Sequeira Chac�n','2024');
(101,'119890787','Nancy Sequeira Chac�n','2024');
(101,'120150167','Nancy Sequeira Chac�n','2024');
(101,'120260161','Nancy Sequeira Chac�n','2024');
(101,'305760397','Nancy Sequeira Chac�n','2024');
(101,'305750403','Nancy Sequeira Chac�n','2024');
(101,'119520424','Nancy Sequeira Chac�n','2024');
(101,'120190200','Nancy Sequeira Chac�n','2024');
(101,'120220406','Nancy Sequeira Chac�n','2024');
(101,'120380540','Nancy Sequeira Chac�n','2024');
(101,'120190361','Nancy Sequeira Chac�n','2024');
(101,'120170498','Nancy Sequeira Chac�n','2024');
(101,'305780981','Nancy Sequeira Chac�n','2024');
(101,'305770992','Nancy Sequeira Chac�n','2024');
(101,'305770346','Nancy Sequeira Chac�n','2024');
(101,'120120995','Nancy Sequeira Chac�n','2024');
(101,'120360271','Nancy Sequeira Chac�n','2024');
(101,'120160389','Nancy Sequeira Chac�n','2024');
(101,'305810166','Nancy Sequeira Chac�n','2024');
(101,'120210895','Nancy Sequeira Chac�n','2024');
(101,'120370200','Nancy Sequeira Chac�n','2024');
(101,'305720638','Nancy Sequeira Chac�n','2024');
(101,'305730588','Nancy Sequeira Chac�n','2024');
(101,'305620645','Nancy Sequeira Chac�n','2024');


--10-2
insert into Seccion(IdSeccion,cedula,ProfesorGuia,a�o) values
(102,'119590925','Carmen Lor�a','2024');
(102,'120050772','Carmen Lor�a','2024');
(102,'120010350','Carmen Lor�a','2024');
(102,'305800508','Carmen Lor�a','2024');
(102,'120330056','Carmen Lor�a','2024');
(102,'120150668','Carmen Lor�a','2024');
(102,'120400310','Carmen Lor�a','2024');
(102,'209040515','Carmen Lor�a','2024');
(102,'120250740','Carmen Lor�a','2024');
(102,'305750552','Carmen Lor�a','2024');
(102,'120200922','Carmen Lor�a','2024');
(102,'120360889','Carmen Lor�a','2024');
(102,'120130842','Carmen Lor�a','2024');
(102,'120180218','Carmen Lor�a','2024');
(102,'305770227','Carmen Lor�a','2024');
(102,'119990579','Carmen Lor�a','2024');
(102,'120210047','Carmen Lor�a','2024');
(102,'120360037','Carmen Lor�a','2024');
(102,'120140983','Carmen Lor�a','2024');
(102,'120180555','Carmen Lor�a','2024');
(102,'305930699','Carmen Lor�a','2024');
(102,'305540464','Carmen Lor�a','2024');
(102,'119820539','Carmen Lor�a','2024');
(102,'119530454','Carmen Lor�a','2024');



--10-3
insert into Seccion(IdSeccion,cedula,ProfesorGuia,a�o) values
(103,'305810577','Manuel Espinoza Gonzales','2024');
(103,'305790602','Manuel Espinoza Gonzales','2024');
(103,'305800770','Manuel Espinoza Gonzales','2024');
(103,'120230990','Manuel Espinoza Gonzales','2024');
(103,'305770906','Manuel Espinoza Gonzales','2024');
(103,'305770611','Manuel Espinoza Gonzales','2024');
(103,'305780258','Manuel Espinoza Gonzales','2024');
(103,'305820159','Manuel Espinoza Gonzales','2024');
(103,'120200173','Manuel Espinoza Gonzales','2024');
(103,'120150281','Manuel Espinoza Gonzales','2024');
(103,'120160391','Manuel Espinoza Gonzales','2024');
(103,'120210181','Manuel Espinoza Gonzales','2024');
(103,'120270116','Manuel Espinoza Gonzales','2024');
(103,'120110838','Manuel Espinoza Gonzales','2024');
(103,'120180664','Manuel Espinoza Gonzales','2024');
(103,'305820698','Manuel Espinoza Gonzales','2024');
(103,'121760384','Manuel Espinoza Gonzales','2024');
(103,'305790454','Manuel Espinoza Gonzales','2024');
(103,'120360038','Manuel Espinoza Gonzales','2024');

--10-4
insert into Seccion(IdSeccion,cedula,ProfesorGuia,a�o) values
(104,'305801300','Manuel Espinoza Gonzales','2024');
(104,'120390211','Manuel Espinoza Gonzales','2024');
(104,'120220488','Manuel Espinoza Gonzales','2024');
(104,'120290628','Manuel Espinoza Gonzales','2024');
(104,'120340227','Manuel Espinoza Gonzales','2024');
(104,'120320801','Manuel Espinoza Gonzales','2024');
(104,'120170465','Manuel Espinoza Gonzales','2024');
(104,'305820217','Manuel Espinoza Gonzales','2024');
(104,'120360569','Manuel Espinoza Gonzales','2024');
(104,'120360528','Manuel Espinoza Gonzales','2024');
(104,'305790583','Manuel Espinoza Gonzales','2024');
(104,'120220223','Manuel Espinoza Gonzales','2024');
(104,'120350550','Manuel Espinoza Gonzales','2024');
(104,'120080503','Manuel Espinoza Gonzales','2024');
(104,'120290601','Manuel Espinoza Gonzales','2024');
(104,'305750637','Manuel Espinoza Gonzales','2024');
(104,'305810078','Manuel Espinoza Gonzales','2024');
(104,'120130034','Manuel Espinoza Gonzales','2024');
(104,'119920058','Manuel Espinoza Gonzales','2024');
(104,'120390164','Manuel Espinoza Gonzales','2024');
(104,'119830912','Manuel Espinoza Gonzales','2024');
(104,'119940171','Manuel Espinoza Gonzales','2024');
(104,'120090074','Manuel Espinoza Gonzales','2024');


--10-5
insert into Seccion(IdSeccion,cedula,ProfesorGuia,a�o) values
(105,'120120409','105','2024');
(105,'120100143','105','2024');
(105,'120210987','105','2024');
(105,'305730686','105','2024');
(105,'305790133','105','2024');
(105,'120320435','105','2024');
(105,'120150018','105','2024');
(105,'120240626','105','2024');
(105,'120350649','105','2024');
(105,'119590672','105','2024');
(105,'305790214','105','2024');
(105,'305790537','105','2024');
(105,'305710201','105','2024');
(105,'120180869','105','2024');
(105,'120360969','105','2024');
(105,'305670701','105','2024');
(105,'120140620','105','2024');
(105,'120410240','105','2024');
(105,'305770600','105','2024');
(105,'120300306','105','2024');
(105,'305810942','105','2024');
(105,'120080486','105','2024');
(105,'119920935','105','2024');
(105,'119910158','105','2024');
(105,'208930023','105','2024');
(105,'119830319','105','2024');

--10-6
insert into Seccion(IdSeccion,cedula,ProfesorGuia,a�o) values
(106,'119320816','Marcia Menani C�rdoba','2024');
(106,'305770436','Marcia Menani C�rdoba','2024');
(106,'120050503','Marcia Menani C�rdoba','2024');
(106,'120330125','Marcia Menani C�rdoba','2024');
(106,'305760154','Marcia Menani C�rdoba','2024');
(106,'119990140','Marcia Menani C�rdoba','2024');
(106,'120280245','Marcia Menani C�rdoba','2024');
(106,'120320889','Marcia Menani C�rdoba','2024');
(106,'120200652','Marcia Menani C�rdoba','2024');
(106,'119830714','Marcia Menani C�rdoba','2024');
(106,'901280786','Marcia Menani C�rdoba','2024');
(106,'305750413','Marcia Menani C�rdoba','2024');
(106,'120250919','Marcia Menani C�rdoba','2024');
(106,'120050981','Marcia Menani C�rdoba','2024');
(106,'120110014','Marcia Menani C�rdoba','2024');
(106,'120400186','Marcia Menani C�rdoba','2024');
(106,'504780836','Marcia Menani C�rdoba','2024');
(106,'305770859','Marcia Menani C�rdoba','2024');
(106,'120100147','Marcia Menani C�rdoba','2024');
(106,'119630609','Marcia Menani C�rdoba','2024');
(106,'120340390','Marcia Menani C�rdoba','2024');
(106,'119870944','Marcia Menani C�rdoba','2024');




--10-7A
insert into Seccion(IdSeccion,cedula,ProfesorGuia,a�o) values
(107A,'305650595','Manuel Espinoza Gonzales','2024');
(107A,'120290336','Manuel Espinoza Gonzales','2024');
(107A,'305790750','Manuel Espinoza Gonzales','2024');
(107A,'120140532','Manuel Espinoza Gonzales','2024');
(107A,'120350549','Manuel Espinoza Gonzales','2024');
(107A,'305770637','Manuel Espinoza Gonzales','2024');
(107A,'120350407','Manuel Espinoza Gonzales','2024');
(107A,'120220325','Manuel Espinoza Gonzales','2024');
(107A,'120130635','Manuel Espinoza Gonzales','2024');
(107A,'305790886','Manuel Espinoza Gonzales','2024');
(107A,'3057801723','Manuel Espinoza Gonzales','2024');
(107A,'120010530','Manuel Espinoza Gonzales','2024');
(107A,'305730052','Manuel Espinoza Gonzales','2024');
(107A,'85203579','Manuel Espinoza Gonzales','2024');
(107A,'305790079','Manuel Espinoza Gonzales','2024');



--10-7B


(107B,'120130872','Gerardo Sibaja Salguero','2024');
(107B,'120360174','Gerardo Sibaja Salguero','2024');
(107B,'120230051','Gerardo Sibaja Salguero','2024');
(107B,'120170262','Gerardo Sibaja Salguero','2024');
(107B,'305810223','Gerardo Sibaja Salguero','2024');
(107B,'120330080','Gerardo Sibaja Salguero','2024');
(107B,'120260785','Gerardo Sibaja Salguero','2024');
(107B,'305740204','Gerardo Sibaja Salguero','2024');
(107B,'120220966','Gerardo Sibaja Salguero','2024');
(107B,'120170876','Gerardo Sibaja Salguero','2024');
(107B,'120270348','Gerardo Sibaja Salguero','2024');
(107B,'120350537','Gerardo Sibaja Salguero','2024');
(107B,'120340266','Gerardo Sibaja Salguero','2024');
(107B,'120140190','Gerardo Sibaja Salguero','2024');
(107B,'305780211','Gerardo Sibaja Salguero','2024');
(107B,'120150713','Gerardo Sibaja Salguero','2024');
(107B,'120000611','Gerardo Sibaja Salguero','2024');





--10-8A
insert into Seccion(IdSeccion,cedula,ProfesorGuia,a�o) values
(108A,'120400187','  ','2024');
(108A,'','  ','2024');
(108A,'','  ','2024');
(108A,'','  ','2024');
(108A,'','  ','2024');
(108A,'','  ','2024');
(108A,'','  ','2024');
(108A,'','  ','2024');
(108A,'','  ','2024');
(108A,'','  ','2024');
(108A,'','  ','2024');
(108A,'','  ','2024');
(108A,'','  ','2024');
(108A,'','  ','2024');
(108A,'','  ','2024');
(108A,'','  ','2024');
(108A,'','  ','2024');
(108A,'','  ','2024');

('Alvarado','Li','Yanlin','','89313337',10,'D'),
('Barrantes','Jim�nez','Meilyn','119620053','83353198',10,'D'),
('Calder�n','Rodr�guez','Esteban','305750855','60064006',10,'D'),
('Calvo','Villalobos','Monserrat','305780120','89930987',10,'D'),
('Dannembergen','Garro','Sebasti�n','119630625','85233080',10,'D'),
('Elizondo','Mendoza','Ashly','305820431','64863189',10,'D'),
('Giraldo','Correa','Mariana','120110375','83554643',10,'D'),
('Granados','M�ndez','Luciana','120300512','83463643',10,'D'),
('Lizano','Oyuela','Eliam','901270892','70723055',10,'D'),
('Montenegro','S�nchez','Maria Paula','120380787','89954604',10,'D'),
('Retana','Villalobos','Allison','120130928','86012993',10,'D'),
('Salas','Rodr�guez','Asley','305800946','86218044',10,'D'),
('Trejos','Jim�nez','Layonel','305780582','86281880',10,'D'),
('Vargas','Guti�rrez','Kenneth','305760327','71177075',10,'D'),
('Vega','Mas�s','Angie','305760920','83940741',10,'D');



--10-8B
Insert into Estudiantes (nombre,primer_apellido,segundo_apellido,cedula,Numero_Encargado,especialidad,tipoEstudiante) values
('Alvarado','Montoya','Sebasti�n','305680201','84346445',4,'D'),
('Anderson','Sol�s','Evans','305760868','86958833',4,'D'),
('Bosch','Salazar','Sebasti�n','120280321','70977640',4,'D'),
('Casas','Rivera','Valerie','120150303','88354458',4,'D'),
('Castillo','Abarca','Allison','305810257','70528419',4,'D'),
('Gonz�lez','Montero','Gabriel','305640247','87532390',4,'D'),
('Jir�n','Cano','Carles','801270987','62567240',4,'D'),
('Mora','Jim�nez','Bayron Fabi�n','120170911','71096322',4,'D'),
('Montero','Ram�rez','Rodian','110810990','89630509',4,'D'),
('Navarro','Delgado','Fiorella','120300616','85420278',4,'D'),
('Olivas','Cortez','Mar�a','155834359635','71531984',4,'D'),
('P�ez','Araya','Krystel','120140446','86939439',4,'D'),
('Rojas','Madrigal','Johan','120360951','72935801',4,'D'),
('Solano','Arce','Keissi','120220929','85118250',4,'D'),
('Vega','Campos','Daniel','119860736','87963665',4,'D'),
('Vega','Rojas','Luna','305810272','61500736',4,'D'),
('Villalta','C�spedes','�ngel','305730921','72029440',4,'D');



--10-9 A 
Insert into Estudiantes (nombre,primer_apellido,segundo_apellido,cedula,Numero_Encargado,especialidad,tipoEstudiante) values
('Arias', 'Solis', 'Tamara', '120180655', '63320441', 14, 'D'),
('Arrollo', 'Calvo', 'Gabriel', '120080488', '83378791', 14, 'D'), ('Barboza', 'Masis', 'Abigail', '121050978', '86343695', 14, 'D'), 
('Barquero', 'Rodr�guez', 'Maria Fernanda', '305580620', '72792739', 14, 'D'), ('Brenes', 'Z��iga', 'Genesis', '305740152', '84686317', 14, 'D'),
('Brizuela', 'Rojas', 'Olana', '120020531', '89596270', 14, 'D'), ('C�spedes', 'Duarte', 'Kaitlyn', '120260543', '85765784', 14, 'D'), 
('Cordero', 'Mora', 'Anyeri', '119760208', '72477764', 14, 'D'), ('G�mez', 'Rodr�guez', 'Kendall', '119640891', '60353301', 14, 'D'), 
('Guevara', 'Rojas', 'Keilyn', '305820118', '71936708', 14, 'D'), ('Hazel', 'Trigueros', 'Daphane', '120280573', '72925957', 14, 'D'), 
('Meneses', 'Cruz', 'Elizabeth', '120150669', '60137996', 14, 'D'), ('Navarro', 'Calder�n', 'Ericka', '120300795', '70259216', 14, 'D'), 
('Quesada', 'Aguilar', 'Alondra', '120210971', '83664231', 14, 'D'), ('Reyes', 'Arrieta', 'Sofia', '120230057', '72062243', 14, 'D'), 
('Ure�a', 'Esquivel', 'Kerlyn', '120350315', '88653548', 14, 'D'), ('Vargas', 'Solano', 'Maykel', '120310208', '86253317', 14, 'D'), 
('Vega', 'Rojas', 'Abigail', '305760180', '87954596', 14, 'D'), ('Villalta', 'Chan', 'Kaisha', '119840236', '88707172', 14, 'D'); 

--10-9 B 
Insert into Estudiantes (nombre,primer_apellido,segundo_apellido,cedula,Numero_Encargado,especialidad,tipoEstudiante) values
('Acosta', 'Mora', 'Rachel', '120380276', '89434892', 6,'D'), 
('Aguirre', 'Cervantes', 'Isa�', '120260199','86733511', 6,'D'),
('Anderson', 'Rodr�guez', 'Josue', '305800480','86175898', 6,'D'), 
('Ballestero', 'Varela', 'Marco', '305770384','87412204', 6,'D'),
('Calvo', 'Cerdas', 'Jimena', '305790712','86281980', 6,'D'), 
('Catro', 'Vargas', 'Reichell', '120140497','85107462', 6,'D'), 
('Chacon', 'Aguilar', 'Sebasti�n', '120120806','88117446', 6,'D'), 
('Gonz�les', 'Mora', 'Michelle', '305800496','70498337', 6,'D'),
('Lizano', 'Morraga', 'Ver�nica', '120200471','83866340', 6,'D'), 
('Loaiza', 'Calder�n', 'Julio', '305800415','71425169', 6,'D'),
('Mata', 'Hern�ndez', 'Keylor', '120220963','89382112', 6,'D'), 
('M�ndez', 'Azofeifa', 'Alison', '120360796','84002317', 6,'D'), 
('Picado', 'Solano', 'Merilan', '305790161','72495080', 6,'D'), 
('Ram�rez', 'Valverde', 'Ariela', '305760765','62906867', 6,'D'),
('Salazar', ' Barboza', 'Emily', '305770350','60478141', 6,'D'), 
('Villalobos', 'Castillo', 'Enyell', '305780218','62041313', 6,'D'); 

--10-10A

Insert into Estudiantes (nombre,primer_apellido,segundo_apellido,cedula,Numero_Encargado,especialidad,tipoEstudiante) values
('BULA',	  'CALVO',	     'IVANNA',     '305790631', '89470055','2','D'),	
('AGUILAR',   'BALLESTERO',	 'MATHIAS'	,  '119910091', '70128690','2','D'),
('CONEJO',	  'CALVO',     	 'DAHIAN',	   '120150416', '89116846','2','D'),
('GODINEZ',	  'DURAN',	     'SEBASTIAN',  '120250425', '88948312','2','D'),
('GORDON',	  'ECHAVARRIA',	 'DANNARA',	   '120300242', '87310959','2','D'),
('GUTIEREZ',  'BARQUERO',	 'JESUS',	   '305760801', '88552728','2','D'),
('GUTIERREZ', 'OABIOAGUA',	 'JESHUE',	   '120190047', '61188758','2','D'),
('HERNANDEZ', 'TORRES',	     'AXEL',	   '305810547', '72338856','2','D'),
('HIDALGO',	  'SERRANO',	 'DANIELA',	   '120210780', '22535400','2','D'),
('JARQUIN',	  'MORA',	     'NANCY',	   '305760932', '85579347','2','D'),
('NAJERA',	  'SERRANO',	 'KEILYN',	   '120200529', '86917143','2','D'),
('PEREZ',	  'CALVO',	     'MARIPAZ',	   '120370587', '84991675','2','D'),
('PICADO',	  'CHAVEZ',	     'KEILYN',	   '305780265', '70659261','2','D'),
('RODRIGUEZ', 'NIEBLES',	 'MARIANA',	   '120260238', '85952787','2','D'),
('SEGURA',	  'CAMPOS',	     'ANDREW',	   '120150698', '85862258','2','D'),	
('VEGA',	  'ROJAS',	     'VICTORIA',   '305460181', '87954596','2','D');


--10-10B
Insert into Estudiantes (nombre,primer_apellido,segundo_apellido,cedula,Numero_Encargado,especialidad,tipoEstudiante) values
('Alvarado','Gonz�lez','Kristel','305760084','85715566',11,'D'),
('Brenes','Olmos','Joshua','120310753','63168301',11,'D'),
('Calder�n','Lewis','Amanda','305800312','63815796',11,'D'),
('Calder�n','Cisneros','Nicole','120170014','84184661',11,'D'),
('Camacho','Castillo','Kevin','305780831','87121389',11,'D'),
('Escobar','L�pez','Nicole','305800047','61058519',11,'D'),
('Olsen','C�rdenas','Jimena','120380390','85814697',11,'D'),
('Pacheco','Rojas','Mariana','305720008','84528946',11,'D'),
('P�rez','Chavarr�a','Keisy','305790582','60739874',11,'D'),
('Ru�z','Jarqu�n','Eidan','120280047','72258513',11,'D'),
('Solano','Fallas','Samantha','120200472','86399259',11,'D'),
('Vargas','Conejo','Camila','119910161','86399259',11,'D');



INSERT INTO Seccion(IdSeccion,cedula,ProfesorGuia,a�o) VALUES
------------------------- 9-7 --------------------------------
(97,'305860136','Mauricio Barquero Chaves','2024'),
(97,'120460243','Mauricio Barquero Chaves','2024'),
(97,'120460213','Mauricio Barquero Chaves','2024'),
(97,'305880649','Mauricio Barquero Chaves','2024'),
(97,'120640952','Mauricio Barquero Chaves','2024'),
(97,'120450815','Mauricio Barquero Chaves','2024'),
(97,'120510608','Mauricio Barquero Chaves','2024'),
(97,'120490970','Mauricio Barquero Chaves','2024'),
(97,'120700499','Mauricio Barquero Chaves','2024'),
(97,'305850222','Mauricio Barquero Chaves','2024'),
(97,'120370274','Mauricio Barquero Chaves','2024'),
(97,'305860133','Mauricio Barquero Chaves','2024'),
(97,'120620265','Mauricio Barquero Chaves','2024'),
(97,'120610521','Mauricio Barquero Chaves','2024'),
(97,'120620235','Mauricio Barquero Chaves','2024'),
(97,'305870018','Mauricio Barquero Chaves','2024'),
(97,'120500563','Mauricio Barquero Chaves','2024'),
(97,'120560999','Mauricio Barquero Chaves','2024'),
(97,'120570398','Mauricio Barquero Chaves','2024'),
(97,'305830477','Mauricio Barquero Chaves','2024'),
(97,'305880695','Mauricio Barquero Chaves','2024'),
(97,'120540779','Mauricio Barquero Chaves','2024'),
(97,'305850060','Mauricio Barquero Chaves','2024'),
(97,'305830628','Mauricio Barquero Chaves','2024'),
(97,'120450638','Mauricio Barquero Chaves','2024'),
(97,'305860021','Mauricio Barquero Chaves','2024'),
(97,'305880380','Mauricio Barquero Chaves','2024'),
(97,'120690983','Mauricio Barquero Chaves','2024'),
(97,'120480211','Mauricio Barquero Chaves','2024'),
(97,'120420822','Mauricio Barquero Chaves','2024'),
(97,'120470872','Mauricio Barquero Chaves','2024'),
(97,'120690631','Mauricio Barquero Chaves','2024');


INSERT INTO Seccion(IdSeccion,cedula,ProfesorGuia,a�o) VALUES
------------------------  9-6 -----------------------------------
(96,'305860448','Verny Chac�n Alvarado','2024'),
(96,'305860816','Verny Chac�n Alvarado','2024'),
(96,'120420506','Verny Chac�n Alvarado','2024'),
(96,'305870459','Verny Chac�n Alvarado','2024'),
(96,'120560998','Verny Chac�n Alvarado','2024'),
(96,'305840479','Verny Chac�n Alvarado','2024'),
(96,'305820599','Verny Chac�n Alvarado','2024'),
(96,'120450142','Verny Chac�n Alvarado','2024'),
(96,'305860287','Verny Chac�n Alvarado','2024'),
(96,'305880371','Verny Chac�n Alvarado','2024'),
(96,'305830894','Verny Chac�n Alvarado','2024'),
(96,'120400037','Verny Chac�n Alvarado','2024'),
(96,'120600913','Verny Chac�n Alvarado','2024'),
(96,'120510961','Verny Chac�n Alvarado','2024'),
(96,'305870183','Verny Chac�n Alvarado','2024'),
(96,'120580526','Verny Chac�n Alvarado','2024'),
(96,'305860009','Verny Chac�n Alvarado','2024'),
(96,'120420262','Verny Chac�n Alvarado','2024'),
(96,'120450589','Verny Chac�n Alvarado','2024'),
(96,'305760249','Verny Chac�n Alvarado','2024'),
(96,'305830597','Verny Chac�n Alvarado','2024'),
(96,'305770093','Verny Chac�n Alvarado','2024'),
(96,'305850982','Verny Chac�n Alvarado','2024'),
(96,'119870266','Verny Chac�n Alvarado','2024'),
(96,'120500953','Verny Chac�n Alvarado','2024'),
(96,'120590007','Verny Chac�n Alvarado','2024'),
(96,'305870273','Verny Chac�n Alvarado','2024'),
(96,'305830936','Verny Chac�n Alvarado','2024'),
(96,'120590491','Verny Chac�n Alvarado','2024'),
(96,'120520465','Verny Chac�n Alvarado','2024'),
(96,'305850081','Verny Chac�n Alvarado','2024');

INSERT INTO Seccion(IdSeccion,cedula,ProfesorGuia,a�o) VALUES
---------------------   9-5 -----------------------------------
(95,'120430787','Mauricio Barquero Chaves','2024'),
(95,'305850482','Mauricio Barquero Chaves','2024'),
(95,'120650337','Mauricio Barquero Chaves','2024'),
(95,'120630363','Mauricio Barquero Chaves','2024'),
(95,'120650126','Mauricio Barquero Chaves','2024'),
(95,'305850251','Mauricio Barquero Chaves','2024'),
(95,'703450026','Mauricio Barquero Chaves','2024'),
(95,'120420267','Mauricio Barquero Chaves','2024'),
(95,'305850797','Mauricio Barquero Chaves','2024'),
(95,'120510795','Mauricio Barquero Chaves','2024'),
(95,'120570873','Mauricio Barquero Chaves','2024'),
(95,'305870604','Mauricio Barquero Chaves','2024'),
(95,'120640040','Mauricio Barquero Chaves','2024'),
(95,'120410459','Mauricio Barquero Chaves','2024'),
(95,'305830670','Mauricio Barquero Chaves','2024'),
(95,'120440329','Mauricio Barquero Chaves','2024'),
(95,'120670205','Mauricio Barquero Chaves','2024'),
(95,'120410107','Mauricio Barquero Chaves','2024'),
(95,'120700622','Mauricio Barquero Chaves','2024'),
(95,'120420677','Mauricio Barquero Chaves','2024'),
(95,'120500823','Mauricio Barquero Chaves','2024'),
(95,'305880701','Mauricio Barquero Chaves','2024'),
(95,'305850723','Mauricio Barquero Chaves','2024'),
(95,'120670722','Mauricio Barquero Chaves','2024'),
(95,'305860321','Mauricio Barquero Chaves','2024'),
(95,'120530984','Mauricio Barquero Chaves','2024'),
(95,'120510589','Mauricio Barquero Chaves','2024'),
(95,'120590827','Mauricio Barquero Chaves','2024'),
(95,'120690104','Mauricio Barquero Chaves','2024'),
(95,'120560293','Mauricio Barquero Chaves','2024'),
(95,'305820379','Mauricio Barquero Chaves','2024'),
(95,'120580009','Mauricio Barquero Chaves','2024');
	 
INSERT INTO Seccion(IdSeccion,cedula,ProfesorGuia,a�o) VALUES
-------------------- 9-4 ----------------------------------------
(94,'120400679','Verny Chac�n Alvarado','2024'),
(94,'305880502','Verny Chac�n Alvarado','2024'),
(94,'120430527','Verny Chac�n Alvarado','2024'),
(94,'120570404','Verny Chac�n Alvarado','2024'),
(94,'120500096','Verny Chac�n Alvarado','2024'),
(94,'120440687','Verny Chac�n Alvarado','2024'),
(94,'305890217','Verny Chac�n Alvarado','2024'),
(94,'120470086','Verny Chac�n Alvarado','2024'),
(94,'402860195','Verny Chac�n Alvarado','2024'),
(94,'305850240','Verny Chac�n Alvarado','2024'),
(94,'120650668','Verny Chac�n Alvarado','2024'),
(94,'120570046','Verny Chac�n Alvarado','2024'),
(94,'305830657','Verny Chac�n Alvarado','2024'),
(94,'120710683','Verny Chac�n Alvarado','2024'),
(94,'120560660','Verny Chac�n Alvarado','2024'),
(94,'305880456','Verny Chac�n Alvarado','2024'),
(94,'305890052','Verny Chac�n Alvarado','2024'),
(94,'120520694','Verny Chac�n Alvarado','2024'),
(94,'305840854','Verny Chac�n Alvarado','2024'),
(94,'305870460','Verny Chac�n Alvarado','2024'),
(94,'120540831','Verny Chac�n Alvarado','2024'),
(94,'305870215','Verny Chac�n Alvarado','2024'),
(94,'120640382','Verny Chac�n Alvarado','2024'),
(94,'120460965','Verny Chac�n Alvarado','2024'),
(94,'305840922','Verny Chac�n Alvarado','2024'),
(94,'120220284','Verny Chac�n Alvarado','2024'),
(94,'120440984','Verny Chac�n Alvarado','2024'),
(94,'120690934','Verny Chac�n Alvarado','2024'),
(94,'305870263','Verny Chac�n Alvarado','2024'),
(94,'120600886','Verny Chac�n Alvarado','2024'),
(94,'305830214','Verny Chac�n Alvarado','2024'),
(94,'305850727','Verny Chac�n Alvarado','2024'),
(94,'120540289','Verny Chac�n Alvarado','2024');


INSERT INTO Seccion(IdSeccion,cedula,ProfesorGuia,a�o) VALUES
----------------------- 9-3 -----------------------------------
(93,'120650215','Astrid Carolina Quir�s Granados','2024'),
(93,'120570666','Astrid Carolina Quir�s Granados','2024'),
(93,'305850470','Astrid Carolina Quir�s Granados','2024'),
(93,'120650985','Astrid Carolina Quir�s Granados','2024'),
(93,'120560453','Astrid Carolina Quir�s Granados','2024'),
(93,'120610770','Astrid Carolina Quir�s Granados','2024'),
(93,'305870509','Astrid Carolina Quir�s Granados','2024'),
(93,'120530471','Astrid Carolina Quir�s Granados','2024'),
(93,'120510477','Astrid Carolina Quir�s Granados','2024'),
(93,'120640649','Astrid Carolina Quir�s Granados','2024'),
(93,'120580623','Astrid Carolina Quir�s Granados','2024'),
(93,'305840859','Astrid Carolina Quir�s Granados','2024'),
(93,'120460705','Astrid Carolina Quir�s Granados','2024'),
(93,'305910605','Astrid Carolina Quir�s Granados','2024'),
(93,'120540455','Astrid Carolina Quir�s Granados','2024'),
(93,'120370620','Astrid Carolina Quir�s Granados','2024'),
(93,'6224-1513','Astrid Carolina Quir�s Granados','2024'),
(93,'305760314','Astrid Carolina Quir�s Granados','2024'),
(93,'305830466','Astrid Carolina Quir�s Granados','2024'),
(93,'120090795','Astrid Carolina Quir�s Granados','2024'),
(93,'120630698','Astrid Carolina Quir�s Granados','2024'),
(93,'305820718','Astrid Carolina Quir�s Granados','2024'),
(93,'120490415','Astrid Carolina Quir�s Granados','2024'),
(93,'120700222','Astrid Carolina Quir�s Granados','2024'),
(93,'120660132','Astrid Carolina Quir�s Granados','2024'),
(93,'305860840','Astrid Carolina Quir�s Granados','2024'),
(93,'120640513','Astrid Carolina Quir�s Granados','2024'),
(93,'305840835','Astrid Carolina Quir�s Granados','2024'),
(93,'305850249','Astrid Carolina Quir�s Granados','2024'),
(93,'120400302','Astrid Carolina Quir�s Granados','2024'),
(93,'120710973','Astrid Carolina Quir�s Granados','2024'),
(93,'120480438','Astrid Carolina Quir�s Granados','2024'),
(93,'305880615','Astrid Carolina Quir�s Granados','2024');

INSERT INTO Seccion(IdSeccion,cedula,ProfesorGuia,a�o) VALUES
-----------------------------  9-2 --------------------------------
(92,'305850675','Ricardo Chan Fonseca','2024'),
(92,'120500013','Ricardo Chan Fonseca','2024'),
(92,'120590298','Ricardo Chan Fonseca','2024'),
(92,'305870134','Ricardo Chan Fonseca','2024'),
(92,'305880024','Ricardo Chan Fonseca','2024'),
(92,'120690254','Ricardo Chan Fonseca','2024'),
(92,'305850813','Ricardo Chan Fonseca','2024'),
(92,'120580232','Ricardo Chan Fonseca','2024'),
(92,'120520866','Ricardo Chan Fonseca','2024'),
(92,'305880327','Ricardo Chan Fonseca','2024'),
(92,'120550282','Ricardo Chan Fonseca','2024'),
(92,'305880885','Ricardo Chan Fonseca','2024'),
(92,'120440181','Ricardo Chan Fonseca','2024'),
(92,'120230996','Ricardo Chan Fonseca','2024'),
(92,'305830918','Ricardo Chan Fonseca','2024'),
(92,'120500011','Ricardo Chan Fonseca','2024'),
(92,'120670534','Ricardo Chan Fonseca','2024'),
(92,'901270810','Ricardo Chan Fonseca','2024'),
(92,'305850062','Ricardo Chan Fonseca','2024'),
(92,'120480995','Ricardo Chan Fonseca','2024'),
(92,'305820707','Ricardo Chan Fonseca','2024'),
(92,'305880962','Ricardo Chan Fonseca','2024'),
(92,'120620735','Ricardo Chan Fonseca','2024'),
(92,'120400125','Ricardo Chan Fonseca','2024'),
(92,'120700581','Ricardo Chan Fonseca','2024'),
(92,'120510685','Ricardo Chan Fonseca','2024'),
(92,'305850202','Ricardo Chan Fonseca','2024'),
(92,'120550532','Ricardo Chan Fonseca','2024'),
(92,'305870146','Ricardo Chan Fonseca','2024'),
(92,'120560852','Ricardo Chan Fonseca','2024'),
(92,'305850775','Ricardo Chan Fonseca','2024'),
(92,'120440040','Ricardo Chan Fonseca','2024'),
(92,'YR2022-08937','Ricardo Chan Fonseca','2024'),
(92,'120610788','Ricardo Chan Fonseca','2024'),
(92,'305880239','Ricardo Chan Fonseca','2024');

INSERT INTO Seccion(IdSeccion,cedula,ProfesorGuia,a�o) VALUES
----------------------------- 9-1 --------------------------------------
(91,'1205600561','Ricardo Chan Fonseca','2024'),
(91,'120540633','Ricardo Chan Fonseca','2024'),
(91,'120580417','Ricardo Chan Fonseca','2024'),
(91,'120490523','Ricardo Chan Fonseca','2024'),
(91,'120490523','Ricardo Chan Fonseca','2024'),
(91,'155850302936','Ricardo Chan Fonseca','2024'),
(91,'305830074','Ricardo Chan Fonseca','2024'),
(91,'120320003','Ricardo Chan Fonseca','2024'),
(91,'305860333','Ricardo Chan Fonseca','2024'),
(91,'305830550','Ricardo Chan Fonseca','2024'),
(91,'186201487819','Ricardo Chan Fonseca','2024'),
(91,'305890846','Ricardo Chan Fonseca','2024'),
(91,'305880573','Ricardo Chan Fonseca','2024'),
(91,'305860525','Ricardo Chan Fonseca','2024'),
(91,'120470474','Ricardo Chan Fonseca','2024'),
(91,'305860182','Ricardo Chan Fonseca','2024'),
(91,'120440023','Ricardo Chan Fonseca','2024'),
(91,'120680292','Ricardo Chan Fonseca','2024'),
(91,'122200968826','Ricardo Chan Fonseca','2024'),
(91,'305870939','Ricardo Chan Fonseca','2024'),
(91,'120690850','Ricardo Chan Fonseca','2024'),
(91,'120420661','Ricardo Chan Fonseca','2024'),
(91,'120390473','Ricardo Chan Fonseca','2024'),
(91,'305880503','Ricardo Chan Fonseca','2024'),
(91,'305890099','Ricardo Chan Fonseca','2024'),
(91,'120470160','Ricardo Chan Fonseca','2024'),
(91,'2080080673','Ricardo Chan Fonseca','2024'),
(91,'120650141','Ricardo Chan Fonseca','2024'),
(91,'305830287','Ricardo Chan Fonseca','2024'),
(91,'120670363','Ricardo Chan Fonseca','2024'),
(91,'305860134','Ricardo Chan Fonseca','2024'),
(91,'121140107','Ricardo Chan Fonseca','2024'),
(91,'901250466','Ricardo Chan Fonseca','2024'),
(91,'120410321','Ricardo Chan Fonseca','2024'),
(91,'120300123','Ricardo Chan Fonseca','2024'),
(91,'120370525','Ricardo Chan Fonseca','2024');


--------------------------------------------------------------Undecimo--------------------------------------------------------------------------------------

--11-1
INSERT INTO Seccion(IdSeccion,cedula,ProfesorGuia,a�o) VALUES
(111,'120040219','Karina Fonseca Miller','2024'),
(111,'305710609','Karina Fonseca Miller','2024'),
(111,'120060425','Karina Fonseca Miller','2024'),
(111,'119640612','Karina Fonseca Miller','2024'),
(111,'119920020','Karina Fonseca Miller','2024'),
(111,'119990004','Karina Fonseca Miller','2024'),
(111,'119930406','Karina Fonseca Miller','2024'),
(111,'119950359','Karina Fonseca Miller','2024'),
(111,'305700745','Karina Fonseca Miller','2024'),
(111,'120070051','Karina Fonseca Miller','2024'),
(111,'120080037','Karina Fonseca Miller','2024'),
(111,'119990841','Karina Fonseca Miller','2024'),
(111,'120040946','Karina Fonseca Miller','2024'),
(111,'119830774','Karina Fonseca Miller','2024'),
(111,'120030337','Karina Fonseca Miller','2024'),
(111,'119790998','Karina Fonseca Miller','2024'),
(111,'119840882','Karina Fonseca Miller','2024'),
(111,'119840232','Karina Fonseca Miller','2024'),
(111,'119870269','Karina Fonseca Miller','2024');
--11-2
INSERT INTO Seccion(IdSeccion,cedula,ProfesorGuia,a�o) VALUES
(112,'305750217','Ilena Fernandez Montero','2024'),
(112,'119680392','Ilena Fernandez Montero','2024'),
(112,'703350982','Ilena Fernandez Montero','2024'),
(112,'119890675','Ilena Fernandez Montero','2024'),
(112,'155850445032','Ilena Fernandez Montero','2024'),
(112,'504700813','Ilena Fernandez Montero','2024'),
(112,'120030336','Ilena Fernandez Montero','2024'),
(112,'119940863','Ilena Fernandez Montero','2024'),
(112,'119840422','Ilena Fernandez Montero','2024'),
(112,'305630383','Ilena Fernandez Montero','2024'),
(112,'119870387','Ilena Fernandez Montero','2024'),
(112,'120020940','Ilena Fernandez Montero','2024'),
(112,'120010785','Ilena Fernandez Montero','2024'),
(112,'402750170','Ilena Fernandez Montero','2024'),
(112,'305750213','Ilena Fernandez Montero','2024'),
(112,'305720039','Ilena Fernandez Montero','2024'),
(112,'119980749','Ilena Fernandez Montero','2024'),
(112,'119880516','Ilena Fernandez Montero','2024'),
(112,'120090993','Ilena Fernandez Montero','2024'),
(112,'119980840','Ilena Fernandez Montero','2024');
--11-3
INSERT INTO Seccion(IdSeccion,cedula,ProfesorGuia,a�o) VALUES
(113,'305690906','Alejandro Jimenes Monje','2024'),
(113,'120080395','Alejandro Jimenes Monje','2024'),
(113,'305750152','Alejandro Jimenes Monje','2024'),
(113,'120020541','Alejandro Jimenes Monje','2024'),
(113,'120020079','Alejandro Jimenes Monje','2024'),
(113,'305750246','Alejandro Jimenes Monje','2024'),
(113,'119680992','Alejandro Jimenes Monje','2024'),
(113,'1199101490','Alejandro Jimenes Monje','2024'),
(113,'120060196','Alejandro Jimenes Monje','2024'),
(113,'119840891','Alejandro Jimenes Monje','2024'),
(113,'119830113','Alejandro Jimenes Monje','2024'),
(113,'120050813','Alejandro Jimenes Monje','2024'),
(113,'119940247','Alejandro Jimenes Monje','2024'),
(113,'120080338','Alejandro Jimenes Monje','2024'),
(113,'120020862','Alejandro Jimenes Monje','2024'),
(113,'120030549','Alejandro Jimenes Monje','2024'),
(113,'119970897','Alejandro Jimenes Monje','2024'),
(113,'305720536','Alejandro Jimenes Monje','2024'),
(113,'305710443','Alejandro Jimenes Monje','2024');
--11-4
INSERT INTO Seccion(IdSeccion,cedula,ProfesorGuia,a�o) VALUES
(114,'305630752','Olga Flores Unfried','2024'),
(114,'119740098','Olga Flores Unfried','2024'),
(114,'120060025','Olga Flores Unfried','2024'),
(114,'305640538','Olga Flores Unfried','2024'),
(114,'119520928','Olga Flores Unfried','2024'),
(114,'119600209','Olga Flores Unfried','2024'),
(114,'119810192','Olga Flores Unfried','2024'),
(114,'120040931','Olga Flores Unfried','2024'),
(114,'901210404','Olga Flores Unfried','2024'),
(114,'305730664','Olga Flores Unfried','2024'),
(114,'305700925','Olga Flores Unfried','2024'),
(114,'305630275','Olga Flores Unfried','2024'),
(114,'119830101','Olga Flores Unfried','2024');
--11-5
INSERT INTO Seccion(IdSeccion,cedula,ProfesorGuia,a�o) VALUES
------------------------------11-5A------------------------------
(115,'119920843','Karina Fonseca Miller','2024'),
(115,'119840415','Karina Fonseca Miller','2024'),
(115,'119930311','Karina Fonseca Miller','2024'),
(115,'305710817','Karina Fonseca Miller','2024'),
(115,'305720204','Karina Fonseca Miller','2024'),
(115,'120050389','Karina Fonseca Miller','2024'),
(115,'119830089','Karina Fonseca Miller','2024'),
(115,'119920083','Karina Fonseca Miller','2024'),
(115,'208730865','Karina Fonseca Miller','2024'),
(115,'120050006','Karina Fonseca Miller','2024'),
(115,'119930274','Karina Fonseca Miller','2024'),

------------------------------11-5B------------------------------
(115,'305720592','Karina Fonseca Miller','2024'),
(115,'305730315' ,'Karina Fonseca Miller','2024'),
(115,'119840365','Karina Fonseca Miller','2024'),
(115,'305690476','Karina Fonseca Miller','2024'),
(115,'119960280','Karina Fonseca Miller','2024'),
(115,'119940871','Karina Fonseca Miller','2024'),
(115,'305680443','Karina Fonseca Miller','2024'),
(115,'120080356','Karina Fonseca Miller','2024'),
(115,'120080475','Karina Fonseca Miller','2024'),
(115,'305710299','Karina Fonseca Miller','2024'),
(115,'119830690','Karina Fonseca Miller','2024'),
(115,'120050573','Karina Fonseca Miller','2024'),
(115,'119820028','Karina Fonseca Miller','2024'),
(115,'119850230','Karina Fonseca Miller','2024'),
(115,'119980722','Karina Fonseca Miller','2024'),
(115,'119930234','Karina Fonseca Miller','2024');
--11-6
INSERT INTO Seccion(IdSeccion,cedula,ProfesorGuia,a�o) VALUES
-------------------------------- 11-6a -------------------------------
(116,'120010941','Astrid Carolina Quiros Granados','2024'),
(116,'305720923','Astrid Carolina Quiros Granados','2024'),
(116,'305680502','Astrid Carolina Quiros Granados','2024'),
(116,'119760312','Astrid Carolina Quiros Granados','2024'),
(116,'119960727','Astrid Carolina Quiros Granados','2024'),
(116,'186201318936','Astrid Carolina Quiros Granados','2024'),
(116,'305710824','Astrid Carolina Quiros Granados','2024'),
(116,'119920460','Astrid Carolina Quiros Granados','2024'),
(116,'119950757','Astrid Carolina Quiros Granados','2024'),
(116,'119880919','Astrid Carolina Quiros Granados','2024'),
(116,'305620446','Astrid Carolina Quiros Granados','2024'),
(116,'120040025','Astrid Carolina Quiros Granados','2024'),
(116,'801440564','Astrid Carolina Quiros Granados','2024'),
(116,'120020532','Astrid Carolina Quiros Granados','2024'),
(116,'119820644','Astrid Carolina Quiros Granados','2024'),
(116,'305720609','Astrid Carolina Quiros Granados','2024'),
------------------------------  11-6b -------------------------------------------
(116,'119990159','Astrid Carolina Quiros Granados','2024'),
(116,'119830371','Astrid Carolina Quiros Granados','2024'),
(116,'119830685','Astrid Carolina Quiros Granados','2024'),
(116,'120040512','Astrid Carolina Quiros Granados','2024'),
(116,'119950681','Astrid Carolina Quiros Granados','2024'),
(116,'305660145','Astrid Carolina Quiros Granados','2024'),
(116,'305710275','Astrid Carolina Quiros Granados','2024'),
(116,'119540137','Astrid Carolina Quiros Granados','2024'),
(116,'120060426','Astrid Carolina Quiros Granados','2024'),
(116,'119940250','Astrid Carolina Quiros Granados','2024'),
(116,'305730299','Astrid Carolina Quiros Granados','2024'),
(116,'305700721','Astrid Carolina Quiros Granados','2024'),
(116,'155832378033','Astrid Carolina Quiros Granados','2024'),
(116,'119970152','Astrid Carolina Quiros Granados','2024');
--11-7
INSERT INTO Seccion(IdSeccion,cedula,ProfesorGuia,a�o) VALUES
---------------------------------11-7 A-----------------------------------------------
(117,'1119520333','Jeilen Morales Perez','2024'),
(117,'305720823','Jeilen Morales Perez','2024'),
(117,'119970093','Jeilen Morales Perez','2024'),
(117,'119830430','Jeilen Morales Perez','2024'),
(117,'305750559','Jeilen Morales Perez','2024'),
(117,'119620526','Jeilen Morales Perez','2024'),
(117,'305620103','Jeilen Morales Perez','2024'),
(117,'305720063','Jeilen Morales Perez','2024'),
(117,'305650531','Jeilen Morales Perez','2024'),
(117,'119990247','Jeilen Morales Perez','2024'),
(117,'305740422','Jeilen Morales Perez','2024'),
(117,'119840924','Jeilen Morales Perez','2024'),
(117,'119870281','Jeilen Morales Perez','2024'),
(117,'119910356','Jeilen Morales Perez','2024'),
(117,'119960934','Jeilen Morales Perez','2024'),
(117,'305720043','Jeilen Morales Perez','2024'),
(117,'119980682','Jeilen Morales Perez','2024'),
(117,'119920036','Jeilen Morales Perez','2024'), 

---------------------------------11-7 B---------------------------------------------------------
(117,'305700279','Jeilen Morales Perez','2024'),
(117,'120070600','Jeilen Morales Perez','2024'),
(117,'119900157','Jeilen Morales Perez','2024'),
(117,'402760832','Jeilen Morales Perez','2024'),
(117,'119930137','Jeilen Morales Perez','2024'),
(117,'305710873','Jeilen Morales Perez','2024'),
(117,'120020470','Jeilen Morales Perez','2024'),
(117,'119900435','Jeilen Morales Perez','2024'),
(117,'801260786','Jeilen Morales Perez','2024'),
(117,'119840919','Jeilen Morales Perez','2024'),
(117,'305720588','Jeilen Morales Perez','2024');
--11-8
INSERT INTO Seccion(IdSeccion,cedula,ProfesorGuia,a�o) VALUES
---------------------------------11-8 A----------------------------------------------------------
(119,'305740074','Andres Segura Araya','2024'),
(119,'119970467','Andres Segura Araya','2024'),
(119,'119900057','Andres Segura Araya','2024'),
(119,'305700711','Andres Segura Araya','2024'),
(119,'119870169','Andres Segura Araya','2024'),
(119,'305730467','Andres Segura Araya','2024'),
(119,'120080446','Andres Segura Araya','2024'),
(119,'120000178','Andres Segura Araya','2024'),
(119,'119930694','Andres Segura Araya','2024'),
(119,'305750228','Andres Segura Araya','2024'),
(119,'305710686','Andres Segura Araya','2024'),
(119,'305720953','Andres Segura Araya','2024'),
(119,'119880392','Andres Segura Araya','2024'),

-----------------------------------11-8 B---------------------------------------------------
(119,'119570521','Andres Segura Araya','2024'),
(119,'119930115','Andres Segura Araya','2024'),
(119,'305620393','Andres Segura Araya','2024'),
(119,'119830075','Andres Segura Araya','2024'),
(119,'305640158','Andres Segura Araya','2024'),
(119,'119700376','Andres Segura Araya','2024'),
(119,'120010831','Andres Segura Araya','2024'),
(119,'120000390','Andres Segura Araya','2024'),
(119,'305670072','Andres Segura Araya','2024'),
(119,'120020387','Andres Segura Araya','2024'),
(119,'119360121','Andres Segura Araya','2024'),
(119,'119990617','Andres Segura Araya','2024'),
(119,'120060189','Andres Segura Araya','2024'),
(119,'119650883','Andres Segura Araya','2024');

--11-9
INSERT INTO Seccion(IdSeccion,cedula,ProfesorGuia,a�o) VALUES
-------------------------------11-9 A-----------------------------------------------------------
(119,'119430437','Gerardo Sibaja Salguero','2024'),
(119,'305730352','Gerardo Sibaja Salguero','2024'),
(119,'119830685','Gerardo Sibaja Salguero','2024'),
(119,'305740070','Gerardo Sibaja Salguero','2024'),
(119,'305700094','Gerardo Sibaja Salguero','2024'),
(119,'305740188','Gerardo Sibaja Salguero','2024'),
(119,'305720408','Gerardo Sibaja Salguero','2024'),
(119,'305730121','Gerardo Sibaja Salguero','2024'),
(119,'305710275','Gerardo Sibaja Salguero','2024'),
(119,'119600682','Gerardo Sibaja Salguero','2024'),
(119,'119720962','Gerardo Sibaja Salguero','2024'),
(119,'120090839','Gerardo Sibaja Salguero','2024'),
(119,'120020562','Gerardo Sibaja Salguero','2024'),
(119,'305730023','Gerardo Sibaja Salguero','2024'),

--------------------------------11-9 B-----------------------------------------------------
(119,'120020505','Gerardo Sibaja Salguero','2024'),
(119,'119950787','Gerardo Sibaja Salguero','2024'),
(119,'119990269','Gerardo Sibaja Salguero','2024'),
(119,'119860377','Gerardo Sibaja Salguero','2024'),
(119,'119960644','Gerardo Sibaja Salguero','2024'),
(119,'119870392','Gerardo Sibaja Salguero','2024'),
(119,'119890508','Gerardo Sibaja Salguero','2024'),
(119,'119860952','Gerardo Sibaja Salguero','2024'),
(119,'305740638','Gerardo Sibaja Salguero','2024'),
(119,'119910658','Gerardo Sibaja Salguero','2024'),
(119,'120060231','Gerardo Sibaja Salguero','2024'),
(119,'305750516','Gerardo Sibaja Salguero','2024'),
(119,'119890681','Gerardo Sibaja Salguero','2024'),
(119,'119930234','Gerardo Sibaja Salguero','2024'),
(119,'703280843','Gerardo Sibaja Salguero','2024');




---7-1
Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values
('121160700', 'COLETTE' ,'ABRAHAMS','MARIN',null,'83063126','D'),
('121030950','THIAGO','BARBOZA','GARC�A',NULL,'72747540','D'),
('306000440','AMMY', 'BONILLA','PADILLA',null,'84823111','D'),
('121300135' ,'ASHLY','CALDER�N','GONZ�LEZ',null,'64096822','D'),
('121200900' ,'ROBERTO','CARDENAS','ZEAS',null,'86726589','D'),
('305980486', 'RICARDO','CASCANTE','BARRANTES',null,'60136070','D'),
('306030378', 'KIRSTEN','CASTRILLO','PASTRAN',null,'63570262','D'),
('305980818', 'VALERY','CHAVARRIA','MONTERO',null,'84734222','D'),
('306020254', 'SHIRLEY','DIAZ','OBANDO',null,'83456049','D'),
('305970186' ,'ZAID','DIAZ','SEGURA',null,'83909801','D'),
('121170405', 'RAQUEL','GOMEZ','SANABRIA',null,'72970549','D'),
('306010011', 'FABIANA','GOMEZ','FERNADEZ',null,'86920898','D'),
('306000755', 'CAMILA','GOMEZ','SARMIENTO',null,'61528328','D'),
('121220919', 'AARON','GONZALEZ','FONSECA',null,'83775772','D'),
('155840276630','LUANA','GONZALEZ','CALERO',null,'70922787','D'),
('305970801','GILBERTH','GUEVARA','ROJAS',null,'71936708','D'),
('121180974','THAMARA','HAZEL','TRIGUEROS',null,'88317432','D'),
('121080140','DAYTON','HUEMBES','CABALLERO',null,'89861013','D'),
('305970327','NICOLE','JIMENEZ','PEREIRA',null,'88148426','D'),
('121290293','AMANDA','JIMENEZ','CALDERON',null,'83452879','D'),
('306000413','DIXMAR','MINA','LOPEZ',null,'71984458','D'),
('306020864','DANIEL','OBANDO','HERNANDEZ',null,'88779208','D'),
('121090039','KEYLETH','PICADO','RODRIGUEZ',null,'63041652','D'),
('306000269','ANA LUCIA','RODRIGUEZ','MORA',null,'89497923','D'),
('121070759','KEVIN','SALAS','ZU�IGA',null,'72009338','D'),
('305960647','NALEMY','SALAZAR','ZAMORA',null,'87104408','D'),
('121150759','ARIELA','SANABRIA','BARRIENTOS',null,'84388215','D'),
('120960960','ISAAC','S�NCHEZ','RIVERA',null,'61644709','D'),
('305970791','ISAI','VILLALOBOS','ROJAS',null,'87973182','D'),
('121140503','ALLAN','VILLANUEVA','BARRIOS',null,'70091048','D'),
('305950694','AARON','ZU�IGA','ROJAS',null,'88213477','D'),
('305980999','OSCAR','Z��IGA','CALDER�N',null,'83977760','D'),
('305960492','DIEGO','JIMENEZ','RODRIGUEZ',null,'60298724','D'),
('121280729','DERECK','YOUNG','OROZCO',null,'60528089','D'),
('305920719','ISAAC','MORA','DELGADO',null,'84624082','D'),
('305920082','ANDR�','VARGAS','AGUILAR',null,'83474986','D');




--7-2---

Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values
('305980663','Mar�a','Aguilar','Mora',NULL,'60941253','D'),
('121190701','Mat�as','Alvares','Camacho',NULL,'88951937','D'),
('121160424','Camila','Baltodano','Chaves',NULL,'83368338','D'),
('306000798','Joshua','Campos','Navarro',NULL,'87254016','D'),
('121240511','Benjam�n','Carranza','Azofeifa',NULL,'87683326','D'),
('306020100','Math�as','Diaz','Gonz�lez',NULL,'60068522','D'),
('505490054','Sara','Garc�a','Fern�ndez',NULL,'60811604','D'),
('305990548','Dreck','G�mez','Granados',NULL,'22793227','D'),
('305980071','Mariana','Guzm�n','G�mez',NULL,'89628766','D'),
('121010584','Sofia','Fallas','Beckles',NULL,'84826254','D'),
('121130068','C�sar','Molina','Salas',NULL,'72099212','D'),
('121030925','Aldrik','Mora','Tore�o',NULL,'87520476','D'),
('121120546','Danna','Serrano','Castro',NULL,'70927137','D'),
('121210021','Nicolle','Ram�rez','Meza',NULL,'22797704','D'),
('121100755','Keyner','Var'	,'Ballestero',NULL,'88056781','D'),
('305980318','Jefferson','Vargas','Sanabria',NULL,'22781294','D'),
('121070165','Casey','Willians','Quir�s',NULL,'83201301','D'),
('305990649','Ian','Amador'	,'Aguilar',NULL,'89980292','D'),
('305980226','Ariel','Barquero','S�nchez',NULL,'83608100','D'),
('305980704','Jes�s','Chaves','Azofgeifa',NULL,'85228556','D'),
('121160621','Krishbell','Campos','Mora',NULL,'72914715','D'),
('305980030','Catalina','Cart�n','Salas',NULL,'87041156','D'),
('121170543','Monserrath','Carmona','Aguilar',NULL,'83861959','D'),
('121110791','Ian','Cespedes'	,'Boza',NULL,'89667007','D'),
('305980854','Juan Pablo','D�az',	'V�quez',NULL,'62311060','D'),
('305960853','Maripaz','Jim�nez',	'Rojas',NULL,'83263328','D'),
('121200884','Ariana','Rostr�n'	,'Ram�rez',NULL,'62223321','D'),
('121020032','Sebasti�n','Montero','Aguilar',NULL,'83411544','D'),
('121220360','Danna','Mora','Campos',NULL,'84323907','D'),
('121190633','Ranchell','L�pez','Rodr�guez',NULL,'86364260','D'),
('121130312','Cristhian','Pacheco',	'Cano',NULL,'62567240','D'),
('305960188','Santiago'	,'V�quez','Moya	',NULL,'88527657','D'),
('209470010','ZOE','QUIROS'	,'ESTRADA',NULL,'88187584','D'),
('121050470','JUAN JOS�','ESPINOZA','OBANDO',NULL,'72242407','D'),
('121180428','NOELIA','CONEJO',	'FERNANDEZ',NULL,'83090467','D');


--7-3---


Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values

('30600663','VALERIA','ARAYA','JIMENEZ',NULL,'89668293','D'),
('121030433','IAM',	'BARRANTES'	,'CASTRILLO',NULL,'25181717','D'),
('121110829','ESTEBAN','BARQUERO','ARGUEDAS',NULL,'72199314','D'),
('121020640','SAMANTHA','BOZA'	,'GOMEZ',NULL,'83556049','D'),
('121210991','RISHELL',	'CENTENO','VILLEGAS',NULL,'64901614','D'),
('121270444','JOSE DAVIC','CORRALES','RAMIREZ',NULL,'86044656','D'),
('306010320','SOFIA','ECHAVARRIA','SERRANO',NULL,'61253294','D'),
('306010953','ESZEQUIEL','ESTRELLA','RODRIGUEZ',NULL,'86856266','D'),
('121140572','NAYGEL','GARCIA','RIVERA',NULL,'84463857','D'),
('121040223','MARIANO','GOMEZ','ROMERO',NULL,'88184109','D'),
('121060107','KAMILA','MARTINEZ','GAMBOA',NULL,'84258999','D'),
('306010251','DIANA','MEJIA','BLANDON',NULL,'84251078','D'),
('305960652','SAMUEL','LUNA','PINTO',NULL,'63075073','D'),
('121100861','ABIGAIL','SOLIS','GUEVARA',null,'84326623','D'),
('306010306','VALENTINA','RIVERA','CHACON',NULL,'83232719','D'),
('121060644','JONATHAN','PEREZ'	,'ALGUERA',NULL,'60928518','D'),
('306040714','EMILY','ALFARO'	,'BADILLA',NULL,'22590696','D'),
('121140170','YULIANA','CASTILLO','MORA',NULL,'88184525','D'),
('305980522','ISAAC','CASTILLO','PE�A',NULL,'89136550','D'),
('121180523','ZAHIRA','CASTRO','VALVERDE',NULL,'83069515','D'),
('306020043','YEIKOL','DUARTE'	,'CERDAS',null,'83531737','D'),
('305980783','RACHELL','CENTENO','MANZANAREZ',null,'83010351','D'),
('121200316','JOSTYN','FALLAS','CISNEROS',null,'40016984','D'),
('121120565','JEFFERSON','GUTIERREZ','AZOFEIFA',null,'87616045','D'),
('121130550','KEISSY','MORALES','MORA',null,'89652294','D'),
('121110599','KRISTEL','LOPEZ','COOPER',null,'72966330','D'),
('121130174','BRIANA','OBALDIA','FALLAS',null,'87183961','D'),
('121130284','DANIEL','OPORTA','ALFARO',null,'25241128','D'),
('305980681','ALANA	','RAMIREZ','AGUILAR',null,'87958981','D'),
('121120491','ISMAEL','RODRIGUEZ','CHAVES',null,'87957748','D'),
('305910777','SAUL','RODRIGUEZ','TORRES',null,'84004476','D'),
('306020240','SANTIAGO','VASQUEZ','FALLAS',null,'86965172','D'),
('121060937','VERNY','VASQUEZ','MENDOZA',null,'89564468','D'),
('305940117','BRYAN','FALLAS','TORRES',null,'72635497','D'),
('120900977','CALEB','VARGAS','MORALES',null,'84080828','D');


--7-4---
Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values


('121180172','MARIELA','SEGURA','CALDERON',null,'70252200','D'),
('121130545','MARIA JESUS','SOLANO','MOLINA',NULL,'72299009','D'),
('209410943','BENJAMIN','VARGAS','JARQUIN',NULL,'83371585','D'),
('305970461','JULIAN','SALAZAR','MATA',NULL,'86923666','D'),
('305990506','NAYELI','COTO ','GUZMAN',NULL,'88401254','D'),
('306020520','TIFFANY','CRUZ','PEREZ',NULL,'84935216','D'),
('121140405','MATHIAS',	'FERNANDEZ','VALLE',NULL,'84116719','D'),
('155846984221','MARIA ALICIA',	'GARCIA','ROCHA',NULL,'62609264','D'),
('306000348','GEORGE','GONZALEZ','GUTIERREZ',NULL,'64604605','D'),
('306010801','JIMENA','GONZALEZ','DURAN',NULL,'88434717','D'),
('402870358','DILANI','GUZMAN','RODRIGUEZ',NULL,'71765648','D'),
('306030917','JOSUA','MARTINEZ'	,'CORTES',NULL,'64729735','D'),
('305970478','LUIS','MONGE','BEJARANO',NULL,'71022875','D'),
('305990869','BRIANA','MORA ','CHACON',NULL,'70290143','D'),
('305960864','JOSE','NAVARRO','VASQUEZ',NULL,'85930749','D'),
('12130099'	,'ETHAN','VASQUEZ','ARRIETA',NULL,'86907447','D'),
('121080638','JOSUE','VARGAS','ARCE',NULL,'85593746','D'),
('306010664','AMBER','VILLALOBOS','CASTILLO',NULL,'62041313','D'),
('121210600','FIORELLA','ARCE','SEGURA',NULL,'60728837','D'),
('305990455','JIMENA','BADILLA','FERNANDEZ',NULL,'71559132','D'),
('703590202','DIEGO','CERDAS','DELGADO',NULL,'87760685','D'),
('209450454','JOSE ANDRES','GONZALEZ','LOPEZ',NULL,'62177904','D'),
('121240357','SAMANTHA','JIMENEZ','CHAVARRIA',NULL,'87321476','D'),
('305980578','GERALD','JIMENEZ','REYES',NULL,'87923455','D'),
('305960406','EMILY','MAIRENA','MU�OZ',NULL,'60859127','D'),
('306020038','SEBASTI�N','MONGE','HERNANDEZ',NULL,'63901650','D'),
('305980708','KEVIN','MORA' ,'VARGAS',NULL,'22793268','D'),
('306020958','ZAMANTHA','MORALES','AGUILAR',NULL,'83639438','D'),
('121140406','JIOHAN','REYES','VALLEJOS',NULL,'71892756','D'),
('306020614','MONSERRATH','RODRIGUEZ','GARCIA',NULL,'60830337','D'),
('306000831','RACHEL','QUESADA'	,'AGUILAR',NULL,NULL,'D'),
('121030248','JEICO','AGUILERA','MORA',NULL,'64329913','D'),
('121180471','JOAN','CODERO','VARGAS',NULL,'63907351','D'),
('120670781','MAR�A CELESTE','CASTILLO','ACU�A',NULL,'87100476','D'),
('155844875317','HAZEL','QUINTANILLA','REYES',NULL,'60097247','D');

--7-5---

Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values

('121180456','ARIANA','MOYA','VEGA',NULL,'88042432','D'),
('121190107','SANTIAGO','ARIAS','MORA',NULL,'87649570','D'),
('209380763','YULIANA',	'BARAHONA','NAVARRO',NULL,'30120880','D'),
('30602837','EMANUEL', 	'BARRANTES','SALAS',NULL,'88468346','D'),
('121310036','ARELHEN',	'BRENES','VALDIVIA',NULL,'85350101','D'),
('306020340','ADRIAN',	'CHEVES','PEREIRA',NULL,'89701643','D'),
('121250087','SOFIA',	'GIRALDO','CORREA',NULL,'22782122','D'),
('C02548063','FRANCIS',	'FLORES','ORTEGA',NULL,	'86032484','D'),
('306010072','MATHIAS',	'MU�OZ','LINARES',NULL,'60184030','D'),
('121200762','VALENTINA','CORDERO','VILLALOBO',NULL,NULL,'D'),
('121260056','REICHELL','MURILLO',	'MASIS',NULL,'70998121','D'),
('121110843','MARIEL','LOPEZ',	'SANCHEZ',NULL,'88716606','D'),
('121150723','MATHEW','ROJAS',	'ARCE',NULL,'71317122','D'),
('121080279','VALENTINA','SANABRIA','BADILLA',NULL,'22830876','D'),
('121050700','ADRIEL','SALAZAR','MATA',NULL,'62711056','D'),
('306020423','JOSE PABLO','TORRES','DELGADO',NULL,'60132341','D'),
('121190002','KEWELL','VARGAS','NAVARRO',NULL,'85765684','D'),
('305990830','KRISTEL','VARGAS','FERNANDEZ',NULL,'88190629','D'),
('121090799','SEBASTIAN','ARRIOLA','MORA',NULL,'63181610','D'),
('305990258','DIANA','BUSTOS','SOLANO',NULL,'86252075','D'),
('305970941','LINSY','DURAN','TORRES',NULL,'87687433','D'),
('120610334','CRISTOPHER','GOMEZ','ARLEY',NULL,'86062819','D'),
('121080936','LUCAS','GUEVARRA','PORRAS',NULL,'71095588','D'),
('305970755','MATIAS','HERNANDEZ','MONTERO',NULL,'61446385','D'),
('306040538','EMANUEL','LIZANO','BLANCO',NULL,'63301953','D'),
('121120765','FEDERICK','LOPEZ','SANCHEZ',NULL,'87962981','D'),
('121290915','SEBASTIAN','MONGE','SANCHO',NULL,'72105435','D'),
('121180515','GEICOL','NAVARRO','SALAZAR',NULL,'72631796','D'),
('121250494','SHEYLA','RUEDA','GUILLEN',NULL,'60730219','D'),
('504940864','NAOMY','VARGAS','CHINCHILLA',NULL,'22010203','D'),
('305960554','ANDREA','VELAQUEZ','DINARTE',NULL	,'87452726','D'),
('121110639','SANTIAGO','Z��IGA','VALVERDE',NULL,'87600595','D'),
('120940672','ISAAC','NAVARRO',	'FERNANDEZ',NULL,'72631796','D');

insert into Estudiantes(Cedula,nombre,Primer_Apellido,Segundo_Apellido,Especialidad,numero_encargado,TipoEstudiante)values
--7-6
('121050699','DYLAN','RAMIREZ','CESPEDES',null, '60988520', 'D'),
('306020690', 'EMILIANO',	'RODRIGUEZ',	'MU�OZ',null, '63124334','D'),
('121100481',	'ANDREY', 'DURAN',	'QUESADA',null, '83023819','D'),
('121180945',	'FIORELLA',	'CALVO', 'GUTIERREZ',null, '89741000','D'),
('121280875',	'CALEB',	'ARGUELLO',	'GAMBOA',null, '86737214','D'),
('121270352',	'LUCKA',	'CAMACHO',	'SANDI',null,	'83213501','D'),
('306030166',	'AKEMI',	'CORDOBA',	'YUNG',null, '87571661','D'),
('121190088',	'SOFIA',	'MASIS',	'CALDERON',null, '72240854','D'),
('121190217',	'SAMANTHA',	'SABORIO',	'PEREZ',null, '60614716','D'),
('121030793',	'ALESKA',	'SEGURA',	'BARQUERO',null, '22782008','D'),
('121220910',	'IAN',	'SEGURA',	'HERNANDEZ',null,	'70731665','D'),
('121030247',	'ALLEN',	'SANCHEZ',	'ACU�A',null,	'72305291','D'),
('305980024',	'ABBY',	'SANCHEZ',	'CORDERO',null, '88859809','D'),
('121110091',	'RICARDO',	'RODRIGUEZ',	'MADRIGAL',null, '88549440','D'),
('305970274',	'DANNA',	'ORTIZ',	'SANCHEZ',null, '85429328','D'),
('305980337',	'VIANKA',	'VARGAS',	'ALVARADO',null, '71334242','D'),
('305970748',	'SEBASTIAN',	'VEGA',	'LEIVA',null,	'85296759','D'),
('121040813',	'VALENTINA',	'COREN',	'SANDOVAL',null, '71532123','D'),
('30600962',	'CAMILA',	'MATAMOROS',	'SANABRIA',null, '87104588','D'),
('121020634',	'MARIPAZ',	'MONTOYA',	'CHAVARRIA',null,	'88732759','D'),
('121060872',	'SOFIA',	'LEANDRO',	'CHINCHILLA',null, '88623964','D'),
('305980427',	'ISAAC',	'PEREIRA',	'REDONDO',null, '22355514','D'),
('305960710',	'JARETH',	'RODRIGUEZ',	'MENA',null, '83399453','D'),
('121050548',	'RUBEN',	'SANCHEZ',	'ANDRADE',null, '86203170','D'),
('306000219',	'KENDALL',	'VELASQUEZ',	'ABARCA',null, '87752379','D'),
('121080547',	'IAN',	'VASQUEZ',	'ZU�IGA',null, '22794592','D'),
('305990430',	'ANA PAULA',	'VIQUEZ',	'PICADO',null, '70235562','D'),
('306010455',	'GERALD',	'VIQUEZ',	'NU�EZ',null,	'64407575','D'),
('121240983',	'SAUL',	'GUTIERREZ',	'ROJAS',null,	'85841125','D'),
('305920869',	'NAYELI',	'JIMENEZ',	'BADILLA',null, '89243110','D'),
('305900832',	'JAKOD',	'NARVAEZ',	'SOLANO',null, '71213389','D'),
('305960346',	'TAYLOR',	'BEDOYA',	'ANDERSON',null, '61059978','D'),
('306040330',	'EVONNY',	'ROBLES',	'AGUILAR',null, '86938249','D'),
('305900695',	'VALENTINA',	'SOLANO',	'MONTOYA',null, '87866262','D');

insert into Estudiantes(Cedula,nombre,Primer_Apellido,Segundo_Apellido,Especialidad,numero_encargado,TipoEstudiante)values
--7-7
('121020526',	'JUAN ANDRES',	'ZU�IGA',	'NU�EZ',null,	86913323,'D'),
('121240173',	'SOF�A',	'AGUILAR',	'URE�A',null,	83973603,'D'),
('121260168',	'VALENTINA',	'CALDERON',	'VEGA',null,	83466734,'D'),
('305990111',	'DANIELA',	'CALVO',	'GUZMAN',null,	64477381,'D'),
('121090986',	'MARIPAZ',	'CASTILLO',	'CAMPOS',null,	86992836,'D'),
('121070912',	'JOAN',	'MENDOZA',	'ROMERO',null,	87555751,'D'),
('121140851',	'ISAAC',	'LIZANO',	'MONTERO',null,	22799911,'D'),
('121030784',	'MATIAS',	'QUIROS',	'MADRIGAL',null,	85479682,'D'),
('121220757',	'ZURIEL',	'RAMIREZ',	'SEGURA',null,	83047464,'D'),
('305990026',	'KESREN',	'RIVERA',	'AGUILAR',null,	85092655,'D'),
('121010152',	'JOSUE',	'RODRIGUEZ',	'GRANADOS',null,	83336916,'D'),
('121110401',	'JOSE',	'SANCHEZ',	'SALGUERO',null,	85442307,'D'),
('121110835',	'RONALD',	'SOLIS',	'MENESES',null,	89634777,'D'),
('306020367',	'CHRISTOPHER',	'VELASQUEZ',	'ARTAVIA',null,	85651491,'D'),
('306010342',	'JACOB',	'VIQUEZ',	'ALVARADO',null,	72837249,'D'),
('121180969',	'GABRIEL',	'ZOMORA',	'SANCHEZ',null,	87512190,'D'),
('121300648',	'RYAN',	'VALVERDE',	'CRUZ',null,	83115484,'D'),
('121160629',	'MARIANA',	'VARGAS',	'PEREZ',null,	83514435,'D'),
('305990791',	'URIEL',	'CHAVES',	'SOTO',null,	86499803,'D'),
('121290128',	'LUIS ALBERTO',	'CASTRO',	'RODRIGUEZ',null,	70862105,'D'),
('306010732',	'JIMENA',	'FLORES',	'OROZCO',null,	64149308,'D'),
('305970192',	'JOSEPH',	'MURILLO',	'GARBANZO',null,	84347914,'D'),
('121220393',	'ANTONELLA',	'PANIAGUA',	'REYES',null,	72865618,'D'),
('1221120630',	'FIORELLA',	'REDONDO',	'MARIN',null,	89660896,'D'),
('121240876',	'HILLARY',	'RIOS',	'PE�ALBA',null,	63370868,'D'),
('305970507',	'EMMA',	'SANABRIA',	'MORA',null,	85297300,'D'),
('305970854',	'SEBASTIAN',	'NAVARRO',	'SOTO',null,	64232708,'D'),
('306010738',	'SEBASTIAN',	'VARGAS',	'ASTUA',null,	84439883,'D'),
('305980336',	'AILYN',	'VARGAS',	'ALVARADO',null,	72132598,'D'),
('121110710',	'CAMILA',	'ARRIETA',	'TORRES',null,	87770901,'D'),
('305880773',	'SEBASTIAN',	'BALLESTERO',	'SANCHEZ',null,	61027371,'D'),
('1207300779',	'PAMELA',	'HERNANDEZ',	'HERRERA',null,	86219009,'D'),
('YR2022-30166',	'OSMARI',	'PEREZ',	'JIMENEZ',null,	84532446,'D');



--8-7
Insert into Estudiantes (segundo_apellido,primer_apellido,nombre,Numero_Encargado,cedula,especialidad,tipoEstudiante) values
('Aguirre',     'Flores',   'Patrick Josua',	'71299942',	'120920059',null,'D'),
('Azofeifa',	'Rojas',	'Sebasti�n',	    '87125957',	'120760625',null,'D'),
('Barboza',  	'Garc�a',	'Allison Sof�a',	'61163531',	'305790644',null,'D'),	
('campos',	    'Ram�rez',	'david',	        '85838789',	'120450112'	,null,'D'),
('Carache',	    'Cruz',	    'Esnaider',	        '64121367',	'305900631'	,null,'D'),	
('Chavarr�a',	'Brenes',	'Robert Steven',    '87418343',	'120730099',null,'D'),
('Espinoza',	'Rizzo',	'Dennise Ainara',	'72792227',	'120800230',null,'D'),
('Fuentes',	    'Cordero',	'Samuel Jes�s',	    '88456194', '120960053',null,'D'),	
('Garita',	    'Ram�rez',	'Diana'	,           '88907193','305920755'	,null,'D'),
('Gonz�lez',	'Hern�ndez','Daniela Paola',    '88964829',	'120970611',null,'D'),
('Guti�rrez',	'Araya',	'Steve Isa�as',	    '87181039',	'305930822',null,'D'),
('Hern�ndez',	'Castillo',	'Alexander Yoao',   '83322820',	'305890834',null,'D'),
('Jimenez',	    'Salgado',	'Gerson',	        '84669143',	'120590437',null,'D'),
('Medal',	    'Molina',	'Ashlay', 	        '64854649',	'155842897002',null,'D'),
('perez',	    'aguilar',	'byron',	        '64065707',	'120620218',null,'D'),
('Picado',	    'Arley',	'Kembly Gabriela',	'84931919',	'305950770',null,'D'),
('Piedra',	    'Esquivel',	'Joshua Esteban',	'72794535',	'120990665',null,'D'),	
('Quesada',	    'Araya',	'Daniela' ,	        '87123160',	'120760313',null,'D'),	
('Quesada',	    'Mora',	    'Allison',	        '84033635',	'305920300'	,null,'D'),
('Ram�rez',	    'Morales',	'Allison Sof�a',	'22784003',	'120970595',null,'D'),	
('Ram�rez',  	'Ram�rez',	'Keitchel Jaciry',	'60169720',	'305910076',null,'D'),	
('Richmond',	'Guzm�n',	'Tatiana',	        '83230316',	'305900239',null,'D'),	
('Rodr�guez',	'Rodr�guez','Mateo',	        '89960749',	'120820553',null,'D'),	
('Rodr�guez',	'Niebles',	'Ang�lica' ,	    '85952787',	'120870782',null,'D'),	
('Roman',	    'Granados',	'Maylu',	        '90717423',	'120520192'	,null,'D'),
('sanabria',	'rojas',	'valentina',	    '89018706',	'120270156',null,'D'),	
('Soto',	    'Cordero',	'Allison Melinda',	'87609117',	'305950932',null,'D'),	
('Uma�a',	    'Araya',	'kristen Gabriela',	'72668751'	,'305910559',null,'D'),	
('Urbina',   	'Delgado',	'Jonathan Andr�s',	'70311692',	'305950748'	,null,'D'),
('Ure�a',	    'Cambronero','Giuliana Sof�a',	'89604633',	'305920995',null,'D'),	
('Ure�a',	    'Zu�iga',	'Keisy',	        '83972161',	'305930522',null,'D'),	
('Varela',	    'Guzm�n',	'Mathias',       	'64108784',	'120740114'	,null,'D'),
('Vargas',	    'Barquero',	'Maria' ,	        '84391112', '120920131'	,null,'D'),
('Vargas',	    'Barquero',	'F�tima Michelle',	'61502432',	'120910430',null,'D'),	
('Vega',	    'Cabezas',	'Denzell',	       '86577152',	'120840488',null,'D');



--8-6
Insert into Estudiantes (segundo_apellido,primer_apellido,nombre,Numero_Encargado,cedula,especialidad,tipoEstudiante) values
('Alvarado'	,  'Mungu�a' ,    'Nefer Ster'	,     '71463934 ',	'120980764',null,'D'),	
('Alvarado'	,   'Li'	 ,    'Meilin'	  ,       '89313337',   '120930040',null,'D'	),
('Barahona'	,   'Pereira',	  'Jos� Leonardo'  ,  '86286761',	'305900565',null,'D'),
('Barboza'	,   'Segura' ,	  'Santiago'    ,  	  '8960948',	'30591034',null,'D'),
('Brizuela' ,   'Carrera',    'Ivanna Josethe',	  '60281253',	'305910319',null,'D'),	
('Carvajal'	,   'Avenda�o',	  'April Zuyay',	  '87253028',	'305960173',null,'D'),
('Carvajal'	,   'Acu�a'   ,	  'Sebasti�n Estiff', '71905060',	'305890622',null,'D'),
('cervantes',   'sandi' ,	  'amanda'	  ,       '22122000' ,	'305920117',null,'D'),	
('Chaves'	,   'Garita',     'Catalina'	  ,   '83127942',	'120730860',null,'D'),	
('Chaves'	,   'Vargas',	  'Mary Angel',	      '72043306',   '120550455'	,null,'D'),
('Cordero'	,   'Solis',	  'Kevin'        , 	  '89224556',   '305870733',null,'D'),	
('Cort�s'	,   'Mendoza',	  'Greta Noelia'	 ,'86684541',	'209330061',null,'D'),
('Granados'	,   'Rodr�guez',  'Sunny Cristal'	, '85895121',   '305900571'	,null,'D'),
('Guill�n'	,   'Vargas',	  'Samuel Mat�as'	, '89410258',   '305910340',null,'D'),	
('Gutierr�z',   'Coto',	      'Luna Sof�a'	   ,  '61347785',	'305890744',null,'D'),
('Hern�ndez',   'Fern�ndez',  'Mar�a Celeste',	  '87100476',	'305950881',null,'D'),
('Herrera'	,   'G�mez',	  'Daniela'       ,	  '83010564',   '403220055'	,null,'D'),
('Mel�ndez'  ,  'S�nchez',	  'Hilary Abigail',	  '89695990',	'305920214',null,'D'),	
('Quesada'	 ,  'Aguilar',	  'Natalia Mar�a' ,	  '86633877',	'305960130',null,'D'),	
('Quesada'	 ,  'Puentes',    'Juan Pablo'	  ,   '61490196',	'120500766',null,'D'	),
('Retana'	,   'Campos',	  'Melany Daniela',	  '86055080',   '305940865',null,'D'),
('Richmond'	,   'Serrano',	  'Sebasti�n Mart�n', '71404301',	'120720323',null,'D'),
('Rodr�guez',   'Mar�n'	,     'Edson Leandro', 	  '88778690',	'305910943'	,null,'D'),
('Rodr�guez',   'Vega'	,     'Gloriana',	      '89013813',	'120800636',null,'D'),
('Rojas'	,   'M�ndez',	  'Jyron Andr�s'	 ,'72643279',   '305910822',null,'D'),
('Solano'	,   'Sandoval',	  'Jason'     ,    	  '12048096',	'60144746',null,'D'),
('Sol�s' 	,   'Trejos',     'Anthony Josu�' ,	  '72307193',	'120910060',null,'D'),	
('Soto'	    ,   'Ram�rez',	  'Steven Samuel'	, '84892291',	'121000383',null,'D'),	
('Taleno'	,   'Arauz'	,     'Johan Fabricio',	  '84106186',	'305900792',null,'D'),
('Torres'	,   'Salazar',	  'Sebasti�n' ,	      '62156560',   '305890590'	,null,'D'),
('Valderramos',	'Vega',	      'Andry Mat�as'	, '62423968',   '120430666'	,null,'D'),
('Vargas'	,   'Zu�iga',     'Kendall'	 ,        '61257692',   '120890184'	,null,'D'),
('Vega'	    ,   'Coto'	,     'Samuel',	          '89410258',   '305900527'	,null,'D'),
('Villegas'	,   'Espinoza',	  'Angie Valeska',    '70194506',   '120860305'	,null,'D'),
('Vivas'	,   'Salas'	,     'Allison' ,	      '87653070',   '305860319'	,null,'D'),
('Zu�iga'	,   'Portilla',   'Fiorella' ,    	  '84699425',   '120860541',null,'D');


--8-5
Insert into Estudiantes (segundo_apellido,primer_apellido,nombre,Numero_Encargado,cedula,especialidad,tipoEstudiante) values
('Alvarado',	'Araya',	'Ximena',	            '88931137',	'120850292',null,'D'),
('Araya',	    'Coto',	    'Christopher Jared',	'83253072',	'305960122',null,'D'),
('Barrantes',	'Cordero',	'Santiago',	            '60181979',	'120990786',null,'D'),
('Brenes',	    'Cordero',	'Rigoberto',	        '22795845',	'120960658',null,'D'),
('Campos',	    'Ure�a',	'Santiago Llanrol',	    '84850329',	'120960166',null,'D'),
('Cerdas',	    'Vargas',	'Sof�a',	            '71580576',	'120950602',null,'D'),
('Conejo',	    'Sol�s',	'Mar�a Celeste',	    '86483624',	'305930360',null,'D'),
('D�az',	    'Lugo',	    'Ricardo Adolfo',	    '62654292',	'186201769836',null,'D'),
('Elizondo',	'V�quez',	'Valeria Paola',	    '22790986',	'120790532',null,'D'),
('Gonz�lez', 	'Mendoza',	'Osiris Yunieth',	    '85638481',	'402870541',null,'D'),
('Guti�rrez',	'Calder�n',	'Erin',	                '8425930',	  '120740478',null,'D'),
('Hidalgo',	    'Mata',	    'Sebasti�n',	        '87207542',	'305930523',null,'D'),
('Mas�s',	    'Lara',	    'Dylan Juli�n',	        '72384506',	'305950904',null,'D'),
('Mica',	    'Ram�rez',  'Sebasti�n David',	    '83237035',	'305890551',null,'D'),
('Montoya',  	'C�rdoba',	'Brianna',	            '86591612',	'120810956',null,'D'),
('Morales',	    'Arrieta',	'Yislany',              '83755325',	'305910873',null,'D'),
('Navarro',	    'Vega',	    'Emily Miranda',	    '87494939',	'305850072',null,'D'),
('P�rez',	    'Segura',	'Abigail', 	            '61986551',	'120760943',null,'D'),
('P�rez',	    'Cede�o',	'Stheyci',	            '87617299',	'120750616',null,'D'),
('Pineda',	    'Rojas',	'Alexia Valentina',	    '72026007', '120800839',null,'D'),
('Portilla',	'Gamboa',	'Santiago',	            '86720091',	'120980713',null,'D'),
('Quesada',	    'Calder�n',	'Sebasti�n',	        '72501265',	'120690560',null,'D'),
('Ram�rez',	    'Sanchez',	'Adriela',	            '83787826',	'305820244',null,'D'),
('Ram�rez',	    'Orozco',	'Sof�a',	            '85680832',	'120720361',null,'D'),
('Richmond',	'Sibaja',	'Brithany Mishell',  	'72009094',	'120930549',null,'D'),
('Rodr�guez',	'Romero',	'Dayan Mar�a',	        '71770939',	'305900732',null,'D'),
('Rodr�guez',	'Ram�rez',	'Isaac', 	            '88718890',	'120750388',null,'D'),
('Salamanca',	'Cruz',	    'Josua',	            '12083009','120830090',null,'D'),
('Salas',	    'Uma�a',	'Iv�n Andr�s',	        '88968658',	'120960751',null,'D'),
('Ulloa',	    'vivas',	'sara',	                '72810073', '305850132',null,'D'),
('Uma�a',	    'Aguilar',	'Carlos',	            '87802637',	'305870861',null,'D'),
('Vargas',	    'Padilla',	'Mat�as Alberto',	    '60918593',	'120930733',null,'D'),
('Vel�squez',	'Espinoza',	'Sianny Sof�a',	        '87490415',	'120990434',null,'D'),
('Z��iga',	    'Araya',	'Luis Santiago',	    '80026999',	'305910872',null,'D');


--8-4
Insert into Estudiantes (segundo_apellido,primer_apellido,nombre,Numero_Encargado,cedula,especialidad,tipoEstudiante) values
('Aguilar',	   'Arburola',	'Yeimy'	,         '72298269',	'120700863',null,'D'),
('Zapata',	   'Torres', 	'Magdiel' ,	      '87313139',   '305870369',null,'D'),
('Aguilar',	   'Cordero', 	'isabella',	      '70755556',   '120900506',null,'D'),
('Arrieta',	   'Vega' ,  	'Jimena Luc�a',   '83586823',	'120960525',null,'D'),
('Arroyo' ,  	'Monge',  	'Alllan'	,     '88376548',   '120720443',null,'D'),
('Barquero',	'Cespedes',	'Natalia' ,   	  '60676753',	'120720818',null,'D'),
('Barquero',	'Mesen',  	'Alejandro',  	  '71085343',   '305960039',null,'D'),
('Blanco' ,	    'Salas',  	'Brittany',	      '87052796',   '120760553',null,'D'),
('Caballero',	'Vilchez', 	'Irving Ariel',	  '72857823',  	'305920485',null,'D'),
('Campos',     'Vargas', 	'Mauricio',	      '64274443',	'120830948',null,'D'),
('Casasola',	'Berm�dez','Mariangel',	      '60793505',	'305890626',null,'D'),
('Cervantes',	'Segura', 	'yola',       	  '83121687' ,  '120750339',null,'D'),
('G�mez',  	'   Madrigal', 	'Evan',	          '86886152' ,  '305960066',null,'D'),
('Idi�quez',	 'Orocu' , 	'Anthony',     	  '88407357',	'120900411',null,'D'),
('Luna', 	    'Campos', 	'Math�as', 	      '83097870', 	'120990439',null,'D'),
('Madrigal',	'M�ndez',	 'Paola Valeria', '86791774',	'305940326',null,'D'),
('matamoros',	'prado',  	'freedman'  ,     '62083023',	'155843156834',null,'D'),
('M�ndez'	,   'Mar�n',	 'Fiorella',      '22798830',	'305940506',null,'D'),
('Monge'	,   'Padilla',	'Fabi�n Josu�',	  '63000349',	'121000617',null,'D'),
('Navarro', 	'Morales',	'Valentina',  	  '85772632',	'305920882',null,'D'),
('Parrales',	'Madriz', 	'Saheli Kalei',	  '1019991',   	'305930082',null,'D'),
('quesada',	     'cede�o', 	'Ashley',     	  '62238819',  	' 120830851',null,'D'),
('Ram�rez',	    'Siles',  	'Brenda Mar�a',	  '22794668', 	'120970586',null,'D'),
('Richmond',	'Boza',   	'Mariangel',	  '85686766',	'305900949',null,'D'),
('Rodr�guez',	'Pe�a',   	'Angelo Dar�o',	  '62749551',	'305880048',null,'D'),
('Salas',    	'Serrano', 	'Andres',	      '71520501',	'120880262',null,'D'),
('S�nchez', 	'Mart�nez',	'Ismael de Jes�s','85607001',	'305930101',null,'D'),
('Segura',  	'Chaves', 	'Kenneth Josu�',  '87213444',	'209360832',null,'D'),
('Serrano',	    'Calvo',  	'Ximena de Jes�s','84547459',	'305910240',null,'D'),
('Toru�o' , 	'Rugama', 	'Randall Antonio','83772015',	'121000390',null,'D'),
('Vargas', 	    'Salas',  	'Sebasti�n Caleb','86898087',	'120860250',null,'D'),
('V�squez', 	'Alvarado',	'Ashley',	      '86290872',	'120840834',null,'D'),
('Vega',  	   ' Meza',   	'Sof�a',	      '72995722',	'120860155',null,'D'),
('Vega',  	    'Schmidt', 	'Ander Joseph',   '30593048',	'305930488',null,'D');






--8-3
Insert into Estudiantes (segundo_apellido,primer_apellido,nombre,Numero_Encargado,cedula,especialidad,tipoEstudiante) values
('Alvarado',	'Varela',	'Nathalia',	    '63440318',	'305930946',null,'D'),
('Barquero',	'Picado',	'Mar�a Celeste','83447511',	'305940788',null,'D'),
('Barrantes',	'Meneses',	'Fabiana' ,   	'86238140',	'121010110',null,'D'),
('Campos',	    'Vargas',	'Mat�as',	    '64274443', '120830947',null,'D'),
('Cano',	    'Moreno',	'Kevin Josu�',	'71347721',	'120950301',null,'D'),
('Chavarria',	'soto',	     'angie',	    '85319293',	'305920383',null,'D'),
('Conejo',	    'Mes�n',	'Christopher',	'60662318',	'120740790',null,'D'),
('Coto',	    'Alvarez',	'Anthony David','61296975',	'120840952',null,'D'),
('Delgadillo',	'Collado',	'Arle Jos�',	'72199887',	'120870498',null,'D'),
('Diaz',	    'Vargas',	'Lyan',	        '87980755',	'305940859',null,'D'),
('Feliz',	    'Ram�rez',	'Jeremy',	    '83162454',	'120630617',null,'D'),
('Fonseca',  	'Ulloa',	'Marco',	    '71207594',	'305890808',null,'D'),
('G�mez',	    'Calder�n',	'Saulo David',	'83198776',	'305950399',null,'D'),
('Guzm�n',	    'Villalobos','Mar�a Celeste','86850718','120790491',null,'D'),
('M�ndez',	    'Jim�nez',	'Brithany Samantha','84725915','120820459',null,'D'),
('Molina',	    'Duarte',	'Halima',  	    '64625500',	'155831361022',null,'D'),
('Mondrag�n',	'Garc�a',	'Fabiola', 	    '64354749',	'120960283',null,'D'),
('Neil',	    'Rodr�guez','Romell Enrique','87797955','120720220',null,'D'),
('Newman',	    'D�az',	    'Allison Samantha','60321924','120790697',null,'D'),
('Ortiz',	    'Cede�o',    'Mar�a Jes�s',	'62967638',	'120810612',null,'D'),
('Porras', 	    'sanabria', 'keren',	     '87404960','305930305',null,'D'),
('Rodr�guez',	'Rodr�guez','Matias',	     '22160262','120510296',null,'D'),
('Rojas',	    'N��ez',	'Zo� Yazm�n',	'84028277',	'120930562',null,'D'),
('Salas',	    'L�pez',	'Santiago' ,	'70848398',	'305920294',null,'D'),
('salazar',	    'obando',	'naomy',	    '85997634',	'305910774',null,'D'),
('S�nchez',	    'Cruz',	   'Brilly', 	    '63692930',	'305900021',null,'D'),
('Solano',   	'Ugalde',	'Sofia',	    '89780991',	'120750819',null,'D'),
('Sotelo',   	'Maldonado','Natanael',	    '64227210',	'120410514',null,'D'),
('Ulloa',   	'Martinez',	'Danier',	    '84387409',	'120960253',null,'D'),
('Valladares',	'Zu�iga',	'Sofia',	    '62968719',	'30580249',null,'D'),
('Vega',	   'Rosales',	'Noemy',	    '63024324',	'305890639',null,'D'),
('Walsh',	   'Montero',	'Aaron',	    '72224711',	'120970736',null,'D'),
('zarate',	   'Fern�ndez',	'Doriam Dar�o',	'62477991',	'305940283',null,'D'),
('Z��iga',	  'Calder�n','	 Deyven', 	    '86140404',	'120720141',null,'D');
 


--8-2
Insert into Estudiantes (segundo_apellido,primer_apellido,nombre,Numero_Encargado,cedula,especialidad,tipoEstudiante) values
('Abarca',	    'Calvo',	 'Esteban David',	 '22783736',	'305950822',null,'D'),
('Alvarado',	'Mes�n',	 'Kristell', 	     '88375396',	'120840836',null,'D'),
('Arias',	    'Arguedas',	 'Valentina Sof�a',	 '71708081',	'305930203',null,'D'),
('Barrantes',	'Mora',	     'Monserrath',	     '88400436',	'120540793',null,'D'),
('Bejarano',	'Madrigal',  'Jeremy',	         '88504652',	'12980855' ,null,'D'),
('Berm�dez',	'Arce',	     'Fabricio Josu�',	 '89408731',	'120730377',null,'D'),
('Borge',	    'Salazar',	 'Fiorella Patricia','63118155',	'120820173',null,'D'),
('Bravo',	    'Mes�n',	 'Brandon Andr�s',	 '64849652',	'305890275',null,'D'),
('Casta�eda',	'Guti�rrez', 'Ariel',	         '85988602',	'120980220',null,'D'),
('Cerdas',	    'Granados',	 'Nissy Valeria',	 '62535947',	'305940134',null,'D'),
('Cerdas',	    'Arostogui', 'Gilary',           '89528014',	'120720018',null,'D'),
('Chavarr�a',	'Boza',      'Pablo Guillermo',	 '22784332',	'305940888',null,'D'),
('Chinchilla',	'Maduro',	 'Isabella',	     '60225898',	'120920084',null,'D'),
('Conejo',	    'Chavarr�a', 'Brianna Mar�a',	 '87586207',	'305940231',null,'D'),
('Cordero',	    'Castro', 	 'Dilady',	         '70194809',	'305950357',null,'D'),
('Cortes',	    'Z��iga',	 'Santiago',	     '72228689',	'120410315',null,'D'),
('Gustavino',	'Alvarez',	 'Alexis Mart�n',	 '71762040',	'305890951',null,'D'),
('Lacayo',	    'Medina',	 'Frida',	         '71262480',	'120980021',null,'D'),
('Montoya',	    'Navarro',	 'Dylan',		     '70186241', 	'120770965',null,'D'),
('Mora',     	'Moya',	     'Sa�l de Jes�s',	 '70122470',	'305940870',null,'D'),
('Obando',	    'Conejo',	 'Mat�as Gabriel',	 '83686334',	'120980015',null,'D'),
('Ortega',	    'Paniagua',	 'Angel April', 	 '88046920',	'305920262',null,'D'),
('Peraza',	    'Aguilar',	 'Karolyn',	         '88899944',	'305930001',null,'D'),
('Rodriguez',	'Cruz',	     'Tamara',      	 '88897681',	'305900812',null,'D'),
('Rosas',	    'Espinach',	 'Fabrizio',	     '88520786',	'120720896',null,'D'),
('S�nchez',	    'Vega',	     'Ian Kaleth',	     '84430611',	'209310968',null,'D'),
('Solano',	    'Chavez', 	 'Evangeline',	     '89187111',	'120810693',null,'D'),
('Stephen',  	'P�rez',	 'Lasheyn Joshanny', '85679107',	'305930839',null,'D'),
('Ure�a', 	    'Gutierrez', 'Kristhen',	     '85013454',	'120740369',null,'D'),
('Vega',	    'Grijalba',	 'Jessiley Daniela', '22792249',	'305920456',null,'D'),
('Vega',	    'Carmona',	 'Santiago',	     '83205734',	'305890479',null,'D'),
('Vega',	    'Aguilar',	 'Sara',	         '83205734',	'305900977',null,'D'),
('Vega',	    'Castillo',	 'Santiago',	     '60653511',	'305900538',null,'D'),
('Vega',	    'Solis',	 'Matias',	         '83148063',	'305830067',null,'D'),
('Z��iga',	    'Jim�nez',	 'Marco Andres',	 '60653511',	'120960241',null,'D');



--8-1
Insert into Estudiantes (segundo_apellido,primer_apellido,nombre,Numero_Encargado,cedula,especialidad,tipoEstudiante) values
('Ag�ero',	  'Rodr�guez',	'Santiago', 	   '84191406',	'120920447',null,'D'),
('Alc�zar',	  'Vel�squez',	'Mat�as Jos�',	   '84991132',	'305930357',null,'D'),
('Arana',	  'R�os',	    'Kevin Jareth',	   '71053418',	'305920236',null,'D'),
('Avell�n',	  'Calvo',	    'Dylan Daniel',	   '84195204',	'120920134',null,'D'),
('Badilla',	  'Rodr�guez',	'Iam Alessandro',  '72680193',	'305920289',null,'D'),
('Benavides', 'G�mez',	    'Sianny',	       '87499751',	'120970147',null,'D'),
('Blanco',	  'Vargas',	    'Santiago Jes�s',  '72189338',	'305900453',null,'D'),
('Calder�n',  'Montoya',	'Andr�s Isaac',	   '89092827',	'120720811',null,'D'),
('Carranza',  'Chac�n',	    'Natalia Daniela', '60186962',	'120870341',null,'D'),
('Delgado',	  'Navarro',	'Keyton Santiago', '84458573',	'120960078',null,'D'),
('Fernandez', 'Orozco',	    'Zoe',	           '71862789','305870769',null,'D'),
('Huertas',	  'Granados',	'G�nesis Fabiola', '85891393',	'120820212',null,'D'),
('Madrigal',  'Bacc�',	    'Sthefannia',	   '88489980', '120750669',null,'D'),
('Mercado',	  'Calero',	    'Anderson',	       '63797978',	'402860631',null,'D'),
('Montoya',	  'Marin',	    'Franco',	       '70252681',	'305890927',null,'D'),
('Mora',	  'Gonzalez',	'Brenda',	       '71404788',	'120880221',null,'D'),
('Morales',	  'Solano',	    'Keryn David',	   '87433313',	'305940903',null,'D'),
('Murillo',	  'Castillo',	'Kristen',	       '87846267',	'305930608',null,'D'),
('Obando', 	  'Acu�a',	    'Marco Jos�',	   '83657891',	'305960124',null,'D'),
('Parada',	  'Barboza',	'Britanny',	       '70277971',	'305850580',null,'D'),
('Portilla',  'Quesada',	'Daniel Josu�',	   '62248371',	'120960071',null,'D'),
('Richmond',  'Montoya', 	'Fabiano',	       '85695716',	'120770849',null,'D'),
('Rodriguez', 'C�spedes',	'Gerald Steven',   '71943435',	'120710864',null,'D'),
('Rodriguez', 'Chac�n',	    'Josue',	       '88947477',	'120930833',null,'D'),
('S�nchez',	  'Castillo',	'Jeremy Emanuel',  '72865776',	'305900975',null,'D'),
('Sanchez' ,  'Chan',	    'Fabian',	       '86229180',	'305930792',null,'D'),
('Sangronis', 'Martinez',	'Kamila Alexandra','71432455',	'186202219931',null,'D'),
('Torres',	  'Garita',	    'Fabiola',	       '88159137',	'120860817',null,'D'),
('Vargas',	  'Fonseca',	'Thomas Fabricio', '83033521',	'120840746',null,'D'),
('Vargas',	  'Acu�a',	    'Ana Laura',	   '89290505',	'120900770',null,'D'),
('Vargas',	  'Artavia', 	'Cristel Jaslene', '87871929',	'305890828',null,'D'),
('Vargas',	  'Bravo',	    'Ashley',	       '87436639',	'305910847',null,'D'),
('Vega',	  'Padilla',	'Keyron',	       '63797978',	'120980871',null,'D'),
('Zu�iga',	  'Leiva',	    'Estefany Pamela', '89968383',	'120840921',null,'D'),
('Chavarria', 'Brenes',  	'Bayron',	       '83268266',	'703540199',null,'D');




Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values
------------------------- 9-7 --------------------------------

('305860136',	'Allison',	'Altamirano',	'Fletes',null,	'71096566', 'D'),
('120460243'	,'Lucas',	'Arburola','Conejo',null,	'70930296', 'D'),
('120460213'	,'Josue'	,'Arrieta'	,'Vega',null,	'89591385','D'),
('305880649','Jhonerick',	'Artavia',	'Mora'	,null,'87293355','D'),
('120640952'	,'Heilyn'	,'Barrantes'	,'Salas',null,'83370793','D'),
('120450815'	,'Yazury'	,'Bonilla'	,'Ram�rez'	,null,'83036248','D'),
('120510608'	,'Mariel'	,'Campos'	,'Rojas'	,null,'60480930','D'),
('120490970'	,'Juan Jos�',	'Carranza',	'Chac�n',null,	'60186992','D'),
('120700499','Mattias'	,'Castro'	,'Romero',null,'85011536','D'),
('305850222'	,'Brandon',	'Fonseca'	,'D�az',null,'84185304','D'),
('120370274'	,'Alejandro',	'Fuentes' ,	'Osorio'	,null,'64493840','D'),
('305860133'	,'Kathia'	,'Garc�a',	'Sevilla'	,null,'84527710','D'),
('120620265'	,'Juan David'	,'Giraldo' ,	'Correa',null,	'88971383','D'),
('120610521'	,'Ana Mar�a'	,'Guti�rrez'	,'Barboza',null,	'84087696','D'),
('120620235',	'Tiffany',	'L�pez',	'Alvarado'	,null,'61001010','D'),
('305870018'	,'Jordan'	,'Marin',	'P�rez',null,	'71295530','D'),
('120500563'	,'Jimena',	'M�ndez'	,'Sibaja',null,	'86270367','D'),
('120560999',	'Rider'	,'Meza'	,'Salmer�n'	,null,'71865849','D'),
('120570398',	'Kristin'	,'Monge' ,	'Obando',null,	'83019383','D'),
('305830477'	,'Saray'	,'Montoya'	,'D�az'	,null,'87189568','D'),
('305880695'	,'Theilor',	'Mora',	'Mora',null,	'61392637','D'),
('120540779',	'Allison',	'Mu�oz'	,'Recio'	,null,'85394836','D'),
('305850060'	,'Mar�a',	'Padilla'	,'Molina'	,null,'72080590','D'),
('305830628',	'Bianca',	'Padilla'	,'Mata',null,	'89446101','D'),
('120450638'	,'Kendall',	'Pizarro'	,'L�on',null,	'88944464','D'),
('305860021',	'Sebastian',	'Quesada',	'Vega'	,null,'88387171','D'),
('305880380'	,'Emmanuel'	,'Rodr�guerz',	'Bonilla',null,'72206822','D'),
('120690983'	,'Katherine',	'Tenorio'	,'Chavarr�a',null,	'86993120','D'),
('120480211'	,'Marian'	,'Valverde',	'Sand�'	,null,'86087001','D'),
('120420822'	,'Chistopher',	'Vargas',	'Alvarado',null,	'71334242','D'),
('120470872'	,'Keylin'	,'Vargas'	,'Navarro',null,	'85765684','D'),
('120690631'	,'Isabella',	'Garc�a',	'Castillo',null,	'61874142','D');
Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values
------------------------  9-6 -----------------------------------
('305860448'	,'Keythin'	,'Aguilar', 	'Aguilar'	,null,'88627493','D'),
('305860816'	,'Dereck'	,'Aguilar'	,'Vega'	,null,'89142978','D'),
('120420506'	,'Math�as'	,'Andrade'	,'Chac�n'	,null,'84916565','D'),
('305870459'	,'Aydan'	,'Arguedas'	,'Brenes'	,null,'83452327','D'),
('120560998'	,'Juliana'	,'Arg�ello',	'Chavarr�a',null,	'70079907','D'),

('305840479'	,'Pablo Andr�s',	'Campo',	'S�nchez',null,	'89412247','D'),
('305820599'	,'Enzo',	'Carpio'	,'Solano'	,null,'71528256','D'),
('120450142','Brayan',	'Castro'	,'Rodr�guez'	,null,'70862105','D'),
('305860287','Ian'	,'Conejo' 	,'Villalobos'	,null,'86932167','D'),
('305880371'	,'Emily'	,'Conejo' 	,'Jim�nez'	,null,'60977350','D'),
('305830894'	,'Santiago'	,'Fonseca'	,'Alcazar'	,null,'61896783','D'),
('120400037'	,'Jos� Pablo'	,'Gonz�lez',	'Porras',null,	'89671541','D'),
('120600913','Samantha',	'Lacayo'	,'Cubillo',null,	'88546139','D'),
('120510961'	,'Isabella',	'Lazo'	,'Carrillo',null,	'84805884','D'),
('305870183'	,'Valeska'	,'L�pez',	'Hern�ndez',null,	'63230610','D'),
('120580526'	,'Layshany'	,'Lutz'	,'Trejos'	,null,'63892028','D'),
('305860009'	,'Makensy'	,'Leit�n'	,'Ordo�ez',null,	'70494989','D'),
('120420262'	,'Rashly'	,'Mar�n',	'Morales',null,	'83226652','D'),
('120450589'	,'Alexa'	,'Monge',	'Pe�a'	,null,'88454130','D'),
('305760249'	,'Jazlyn'	,'Montero',	'L�pez'	,null,'71053361','D'),
('305830597'	,'Jared'	,'Ordo�ez',	'Romero'	,null,'83020349','D'),
('305770093'	,'Mar�a Fernanda'	,'Ortiz'	,'S�nchez',null,	'85429328','D'),
('305850982'	,'Sherry'	,'Quesada', 	'Sanabria', null,	'83436059','D'),
('119870266'	,'Aaron'	,'Quir�s',	'Gutierrez',null,	'83096842','D'),
('120500953'	,'Santiago',	'Rodr�guez'	,'Arce',null,	'85188665','D'),
('120590007'	,'Jeikol'	,'Rojas',	'Mena',null,	'71084418','D'),
('305870273'	,'Rachelle'	,'Rojas' ,	'Massa'	,null,'83118812','D'),
('305830936'	,'Allan'	,'Salgado' ,	'Castro',null,	'61202719','D'),
('120590491'	,'Fernanda'	,'Tra�a',	'Mu�oz',null,	'63953997','D'),

('120520465'	,'Fabiana'	,'Villalobos'	,'Navarro',null,	'84098063','D'),
('305850081'	,'Nicole'	,'Z��iga',	'L�pez'	,null,'61031139','D');
Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values
---------------------   9-5 -----------------------------------
('120430787',	'Natan',	'Amador',	'N��ez',null,	'60037163','D'),
('305850482',	'Kimberly',	'Campos',	'Guzm�n',null,	'88404481','D'),
('120650337',	'Math�as','	Campos',	'S�nchez',null,	'85434356','D'),
('120630363',	'Dylan','	Carvajal',	'Hern�ndez',null,	'71021559','D'),
('120650126',	'Ethan',	'Casta�eda',	'S�nchez',null,	'72064258','D'),
('305850251',	'Daniel',	'Castell�n',	'Tercero',null,'87241004','D'),
('703450026',	'Kiany',	'Cohen',	'Redondo',null,	'89878449','D'),
('120420267',	'Aleska',	'Fallas',	'Jim�nez',null,	'88099047','D'),
('305850797',	'Emily',	'Granados',	'Lizano',null,	'88432320','D'),
('120510795',	'Alejandro',	'Hern�ndez',	'Solano',null,	'88406308','D'),
('120570873',	'Camila',	'Jarqu�n',	'Miranda',null,	'62650344','D'),
('305870604',	'Pablo C�sar',	'Jim�nez',	'Aguilar',null,	'86727391','D'),
('120640040',	'Amanda',	'Jim�nez',	'Rodr�guez',null,	'83233420','D'),
('120410459',	'Anyuli',	'Miller',	'Coronado',null,	'89738052','D'),
('305830670',	'Sebastian',	'Mora',	'Calvo',null,	'89446604','D'),
('120440329',	'Celeste',	'Obando',	'Monge',null,	'87261850','D'),
('120670205',	'Emmanuel',	'Ot�rola',	'Rodr�guez',null,	'87619461','D'),
('120410107',	'Maria Fernanda',	'P�rez',	'Sanabria',null,	'85490346','D'),
('120700622',	'Brianna',	'Quir�s',	'Montero',null,	'86341646','D'),
('120420677',	'Sebastian',	'Ram�rez',	'Morales',null,	'85583279','D'),
('120500823',	'Keylor',	'Rodr�guez',	'Porras',null, 	'84415779','D'),
('305880701',	'Dairyng',	'Rojas',	'Vargas',null,	'85936729','D'),
('305850723',	'Ashley',	'Rojas',	'Vindas',null,	'60973003','D'),
('120670722',	'Sheryl',	'Salazar', 	'Keith',null,	'85244752','D'),
('305860321',	'Fernando',	'Salda�a', 'L�pez',null,	'86038901','D'),
('120530984',	'Diana',	'S�nchez',	'Campos',null,	'83145288','D'),
('120510589',	'Mathias',	'Tenorio',	'Anderson',null,	'85920462','D'),
('120590827',	'Dialany',	'Torres',	'Morales',null,	'89694406','D'),
('120690104',	'Alexa',	'Torres',	'Orellana',null,	'86597881','D'),
('120560293',	'Mariangel',	'Vargas',	'Salas',null,	'88039017','D'),
('305820379',	'Kevin',	'Velazquez',	'Madriz',null,	'87487278','D'),
('120580009',	'Brenda',	'Chavarr�a',	'Amador',null,	'87158344','D');
Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values
-------------------- 9-4 ----------------------------------------
('120400679',	'Josu�',	'Abarca'	,'Casasola'	,null,'88746821','D'),
('305880502'	,'Sofia'	,'Arce',	'S�nchez'	,null,'85670884','D'),
('120430527',	'Sof�a'	,'Baltodano',	'Chaves'	,null,'71147089','D'),
('120570404',	'Santiago'	,'Boza',	'Cordero',	null,'61970023','D'),
('120500096'	,'Luc�a'	,'Chac�n',	'Maglianesi',null,	'85815986','D'),
('120440687',	'Stephanie'	,'Cordero',	'Pereira',null,	'89609485','D'),
('305890217'	,'Amanda'	,'Fallas',	'Martinez',null,	'88752025','D'),
('120470086	','Darien',	'Fern�ndez'	,'Villalobos',	null,'84086038','D'),
('402860195',	'Raquel',	'Guadamuz',	'Chinchilla',null,	'87815985','D'),
('305850240',	'Juan Ignacio'	,'Hern�ndez',	'Calvo',null,	'70907075','D'),
('120650668'	,'Pablo',	'Jarqu�n',	'Candray',null,	'61260640','D'),
('120570046',	'Joseph'	,'Laccayo' ,	'Medina',null,'71262480','D'),
('305830657'	,'Sheyla'	,'L�pez',	'Dur�n',null,	'87817568','D'),
('120710683'	,'Maripaz'	,'Mena'	,'Miranda',null,	'83547719','D'),
('120560660'	,'Neifen',	'Pereira',	'Peralta',null,	'71101891','D'),
('305880456'	,'Jeremy',	'Quesada',	'Hidalgo',null,	'72042243','D'),
('305890052'	,'Luis',	'Rivera',	'Solis'	,null,'84679252','D'),
('120520694'	,'Hillary',	'Rom�n' ,	'Hern�ndez',null,	'88724962','D'),
('305840854',	'Neshmy'	,'Salazar' ,	'Garro',null, '71085544','D'),
('305870460','Ariana'	,'S�nchez',	'Arronis',null,	'61558372','D'),
('120540831'	,'Matias'	,'S�nchez',	'Avenda�o',	null,'85036714','D'),
('305870215',	'Fabricio'	,'Segura'	,'Garita',null,	'86971410','D'),
('120640382'	,'Denisse',	'Solano'	,'Tenorio',	null,'85367210','D'),
('120460965	','Allan',	'Solano'	,'Z��iga',	null,'64577790','D'),
('305840922',	'Gabriela'	,'Solano'	,'Guzm�n',null,	'62593670','D'),
('120220284'	,'Ashley'	,'Solera'	,'Rivera',null,	'70514547','D'),
('120440984'	,'Kendal'	,'Somarribas',	'Cruz',null,	'83335995','D'),
('120690934'	,'Mathew',	'Valverde'	,'Valverde',null,	'88025296','D'),
('305870263'	,'Armando',	'Vanhorn'	,'Ram�rez',null,	'85411044','D'),
('120600886',	'Fabiola',	'Vega',	'Brenes'	,null,'70606702','D'),
('305830214'	,'Mauricio',	'Vega',	'Guti�rrez',null,	'70043897','D'),
('305850727',	'Kenneth',	'Z��iga',	'Calder�n'	,null,'87286917','D'),
('120540289'	,'Camila'	,'Z��iga'	,'Rivera'	,null,'63968000','D');
Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values
----------------------- 9-3 -----------------------------------
('120650215',	'Mary Paz',	'Angulo',	'D�az',null,	'71947656','D'),
('120570666',	'Santiago',	'Alonso'	,'Ovares',null,	'71415495','D'),
('305850470',	'Deiber',	'Araya'	,'Viquez',null,	'83160827','D'),
('120650985',	'Christopher',	'Arroyo',	'Montes',null,	'85530576','D'),
('120560453',	'Tifany'	,'Campos'	,'Contreras',null,	'88696338','D'),
('120610770',	'Valeria'	,'Chavarr�a',	'Solano',null,	'87128303','D'),
('305870509',	'Mathias'	,'Cordero' ,	'Arrieta',null,	'63230440','D'),
('120530471',	'Melanie'	,'Coronel',	'Brenes',null,	'72510527','D'),
('120510477',	'G�nesis',	'Fallas' ,	'Brizuela',null,	'88581991','D'),
('120640649',	'Matias', 'Fern�ndez',	'Cespedes',null,'84153750','D'),
('120580623', 'Amanda',	'Fern�ndez',	'Gonz�lez',null,	'88221543','D'),
('305840859',	'Mar�a Paula',	'Fern�ndez',	'Hern�ndez',null,	'71031674','D'),
('120460705',	'Dariana',	'Figueroa'	,'Mar�n',null,	'85692953','D'),
('305910605',	'Nelson'	,'Garc�a',	'L�pez',null,	'71836975','D'),
('120540455',	'Diego'	,'Hern�ndez',	'Madrigal',	null,'88060064','D'),
('120370620',	'Diego'	,'L�pez'	,'Avenda�o',	null,'64877974','D'),
('6224-1513',	'Iverson',	'Mendoza'	,'Patterson',null,	'70345066','D'),
('305760314',	'Gabriel',	'Navarro',	'Badilla',null,	'83028075','D'),
('305830466',	'Sophia'	,'Obando'	,'Aguilar',null,'87181251','D'),
('120090795',	'Julieta',	'Ortiz',	'Ortiz'	,null,'60499665','D'),
('120630698',	'Keilyn'	,'Ponce',	'Chavarr�a',null,	'87650707','D'),
('305820718',	'Jefferson',	'Quir�s',	'Quesada',null,	'83838143','D'),
('120490415',	'Kristel',	'Rodr�guez',	'Pereira',null,	'86171428','D'),
('120700222',	'Dylan'	,'S�nchez'	,'Cespedes',null,	'85248372','D'),
('120660132',	'Mary Paz',	'Segura',	'Calder�n',null,	'70252200','D'),
('305860840',	'Alonso',	'Torres', 'De la O',null,	'70213377','D'),
('120640513',	'Dar�o',	'Torres'	,'Solano',null,	'89775891','D'),
('305840835',	'Dariana',	'Ure�a'	,'Solano',null,	'89228855','D'),
('305850249',	'Sofia'	,'Valladares',	'Z��iga',null,	'62968719','D'),
('120400302',	'Otto'	,'Varela'	,'Bonilla',null,	'62666070','D'),
('120710973',	'Valeria',	'Vega'	,'G�mez',null,	'87043010','D'),
('120480438',	'Ismael'	,'Vega'	,'Fallas',null,	'71842058','D'),
('305880615',	'Juan Pablo',	'Zumbado'	,'Vargas',null,	'62020899','D');
Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values
-----------------------------  9-2 --------------------------------
('305850675',	'Joseue',	'Alcocer'	,'Herrera',null,	'88886530','D'),
('120500013',	'Marian'	,'Alvarado'	,'Brenes',null,	'71540874','D'),
('120590298',	'Yuleisy',	'Arrieta' ,	'S�nchez',null,	'89102311','D'),
('305870134',	'Ashley'	,'Bola�os',	'Lor�a'	,null,'61992885','D'),
('305880024',	'Ashley',	'Calder�n'	,'Solano',null,	'71437441','D'),
('120690254',	'Dereck',	'D�az'	,'Tapia'	,null,'89127553','D'),
('305850813',	'Gurgen',	'Calvo'	,'Z��iga'	,null,'70612381','D'),
('120580232',	'Valeria'	,'Cerdas' ,	'Aguilar'	,null,'70199217','D'),
('120520866',	'Genesis',	'Cespedes'	,'Ram�rez',null,	'71092800','D'),
('305880327','Math�as'	,'Chaves'	,'Fonseca'	,null,'88420226','D'),
('120550282',	'Allison'	,'Fallas' ,	'Quesada',null,	'84482695','D'),
('305880885',	'Alexander','Fonseca'	,'Cantillo'	,null,'88973827','D'),
('120440181',	'Gabriel',	'Garc�a'	,'Vargas'	,null,'83889969','D'),
('120230996',	'Valeria'	,'Granados',	'D�az'	,null,'60824920','D'),
('305830918',	'Sebastian'	,'Hern�ndez',	'Montero',null,	'61446385','D'),

('120500011',	'Dylan'	,'Hern�ndez'	,'Navarro'	,null,'61343033','D'),
('120670534',	'Amanda',	'Le�n'	,'Segura'	,null,'87090979','D'),
('901270810',	'Dayanna',	'Lizano'	,'Oyuela',null,	'70723056','D'),
('305850062',	'Kendall',	'Loaiza'	,'N��ez'	,null,'85011267','D'),
('120480995',	'Abigail',	'Luna'	,'Campos'	,null,'88986418','D'),
('305820707',	'Jose Pablo' ,'Mar�n' 	,'Araya' 	,null,'71266681','D'),
('305880962',	'Neythan'	,'Meneses' 	,'Calder�n',null,	'84129690','D'),
('120620735',	'Stephanie',	'Murray'	,'Luna'	,null,'83507051','D'),
('120400125',	'Mariangel',	'N��ez',	'Barrantes',null,	'72995996','D'),
('120700581',	'Brittany','Padilla'	,'Calder�n',null,	'71655426','D'),
('120510685',	'Gabriel',	'Quesada'	,'Quintanilla'	,null,'88533352','D'),
('305850202',	'Mathias',	'Quir�s	','Guzm�n'	,null,'72004993','D'),
('120550532',	'Naiara',	'Rivera'	,'Brekenridge',null,	'70919070','D'),
('305870146'	,'Cristopher',	'Rodr�guez',	'Ortega'	,null,'87217158','D'),
('120560852'	,'Mar�a'	,'Rugama',	'Centeno'	,null,'85141597','D'),
('305850775'	,'Emiliano'	,'S�nchez'	,'Araya'	,null,'86024002','D'),
('120440040',	'Dereck',	'Vega'	,'Navarro'	,null,'88805326','D'),
('YR2022-08937'	,'Amanda'	,'Vega'	,'Padilla'	,null,'72178085','D'),
('120610788'	,'Juliana'	,'Vilchez',	'Rojas'	,null,'61144204','D'),
('305880239',	'Andy',	'Z��iga',	'Mes�n'	,null,'86635325','D');
Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values
----------------------------- 9-1 --------------------------------------
('1205600561'	,'Dariana',	'Angulo'	,'Jim�nez',null,	'83127320','D'),
('120540633'	,'Julissa'	,'Baez',	'Sand�',null,	'60227146','D'),
('120580417'	,'Owen'	,'Barrios',	'Calvo'	,null,'86034983','D'),
('120490523'	,'Valeria'	,'Berm�dez'	,'Vega',null,	'88075612','D'),
('155850302936',	'Jetyuris',	'Betanco'	,'Rivera',null,	'63037480','D'),
('305830074'	,'Valeria'	,'Bonilla',	'Padilla',null,	'89216381','D'),
('120320003'	,'Ana Cecilia'	,'Bonilla' ,	'Zumbado'	,null,'72025414','D'),
('305860333'	,'Isabella',	'Brenes',	'Trejos'	,null,'84090219','D'),
('305830550'	,'Denis'	,'Cordero'	,'Masis'	,null,'89709791','D'),
('186201487819',	'Nikole',	'Crespo'	,'Bandres'	,null,'70650610','D'),
('305890846'	,'Ricardo'	,'Echavarr�a'	,'Serrano',null,	'84013856','D'),
('305880573'	,'Brittany',	'Fern�ndez'	,'Gonz�lez'	,null,'86340735','D'),
('305860525'	,'Eddy'	,'Hern�ndez'	,'Torres'	,null,'72836034','D'),
('120470474'	,'Steve'	,'Jim�nez',	'Dosma',null,	'70179425','D'),
('305860182'	,'Samuel'	,'Jim�nez',	'Z��iga',null,'86511756','D'),
('120440023'	,'Deyviths',	'Jim�nez',	'Rojas'	,null,'86392330','D'),
('120680292','Samuel' ,'Leandro','Faba',null,'87020067','D'),
('122200968826'	,'Gonzalo'	,'Mart�nez'	,'Ram�rez',null,	'70639621','D') ,
('305870939'	,'Santiago'	,'Masis',	'Sanabria',null,	'85520650','D'),
('120690850'	,'Angelique'	,'Mora'	,'Torres',null,'86727706','D'),
('120420661'	,'Santiago',	'Otarola',	'Arce',null,	'72045258','D'),
('120390473'	,'Zoe'	,'Pacheco',	'Morales'	,null,'88130132','D'),
('305880503'	,'Abigail'	,'Picado'	,'Rosales',null,	'62967405','D'),
('305890099'	,'Michelle',	'Quir�s',	'Quir�s',null,	'71731677','D'),
('120470160'	,'Samantha'	,'Rodr�guez',	'Uma�a',null,	'71551210','D'),
('2080080673'	,'Diana'	,'Ruiz'	,'L�pez',null,	'64446485','D'),
('120650141'	,'Andr�s'	,'Salguero',	'Torres',null,	'83272590','D'),
('305830287'	,'Mariel',	'Salas' ,	'Vargas',null,	'72769654','D'),
('120670363'	,'Isaac'	,'Sand�',	'Venegas',null,	'87121307','D'),
('305860134'	,'Matias',	'Torres',	'Delgado'	,null,'60132341','D'),
('121140107'	,'Esteban',	'Valerio',	'Zamora'	,null,'63202987','D'),
('901250466'	,'Fabio'	,'Vanderveer'	,'Benavides'	,null,'87068223','D'),
('120410321'	,'Sebastian',	'Vargas',	'S�nchez',null,	'72537177','D'),
('120300123'	,'Mar�a Celeste',	'Vega'	,'Coto'	,null,'87430400','D'),
('120370525'	,'Laura'	,'Zapata',	'Ocampo',	null,'87326139','D');
--10-1
Insert into Estudiantes (nombre,primer_apellido,segundo_apellido,cedula,Numero_Encargado,especialidad,tipoEstudiante) values
('Araya','Fonseca','Britany','120300536','86194554', 1,'D'),
('Castillo','Castro','Emma','119890787','83437743',1, 'D'),
('Calder�n','Rodr�guez','Kimberly','120150167','85107309', 1,'D'),
('Conejo','Miranda','Maria Paula','120260161','87075963',1, 'D'),
('Conejo','Rodr�guez','Sof�a','305760397','84910998',1, 'D'),
('Cordero','Cart�n','Neitan','305750403','88296961',1, 'D'),
('C�rdoba','Chavarr�a','Fiorella','119520424','88771908',1,'D'),
('G�mez','Orozco','Amanda','120190200','89738170',1,'D'),
('Guillen','Malespin','Emily','120220406','22715772',1,'D'),
('Meneses','Villalobos','Isabella','120380540','86227564',1,'D'),
('Motiel','L�pez','Eybikell','120190361','60376845',1,'D'),
('Montoya','Rodr�guez','Melnie','120170498','70158908',1,'D'),
('Navarro','Guti�rrez','Hilary','305780981','88030004',1,'D'),
('Le�n','Salazar','Luis �ngel','305770992','83107200',1,'D'),
('Quesada','Gonz�lez','Jimena','305770346','89760077',1,'D'),
('Quesada','Urtecho','Maria Fer','120120995','88149356',1,'D'),
('Rivera','N��ez','Alexia','120360271','86176960',1,'D'),
('Sol�s','S�nchez','Amanda','120160389','83207417',1,'D'),
('Trejos','Gonz�lez','Santiago','305810166','84412873',1,'D'),
('Ure�a','Azofeifa','Yordi','120210895','85616463',1,'D'),
('Vargas','Acosta','Girlana','120370200','85732969',1,'D'),
('Elizando','Jim�nez','Keisy','305720638','88869817',1,'D'),
('Z��iga','Brenes','Axell','305730588','87645041',1,'D'),
('Z��iga','Obando','Rams�s','305620645','60527608',1,'D');



--10-2
Insert into Estudiantes (nombre,primer_apellido,segundo_apellido,cedula,Numero_Encargado,especialidad,tipoEstudiante) values

('Segura','L�pez','Ra�l','119590925','89553742',13,'D'),
('Escobar','Buitrago','Jeshua','120050772','87955084',13,'D'),
('Artavia','Campos','�ngel','120010350','89087667',13,'D'),
('Azofeifa','Sol�s','Agust�n','305800508','60151718',13,'D'),
('Barquero','Vargas','Christian','120330056','84406131',13,'D'),
('Bonilla','Ortega','Ian','120150668','88188158',13,'D'),
('Castro','Guzm�n','Emily','120400310','86638260',13,'D'),
('Corrales','Espinoza','Maria Paula','209040515','84013211',13,'D'),
('D�az','Chavarr�a','Stefany','120250740','88140404',13,'D'),
('Fonseca','Sarmiento','Jimena','305750552','87016916',13,'D'),
('Lizano','Vega','Dereck','120200922','87820201',13,'D'),
('Mas�s','Jim�nez','Axel','120360889','85666782',13,'D'),
('Mej�a','Miranda','Javier','120130842','70264264',13,'D'),
('Monge','Vega','Sa�l','120180218','60111000',13,'D'),
('Montoya','Alcazar','Neytan','305770227','87864808',13,'D'),
('Pacheco','Vega','Emma','119990579','88081095',13,'D'),
('Rodr�guez','Vindas','Mariangel','120210047','71304013',13,'D'),
('Rojas','Cruz','Mathias','120360037','72325001',13,'D'),
('S�nchez','Cordero','Nohan','120140983','88859809',13,'D'),
('Somarribas','Gonz�lez','Jean Carlos','120180555','85428729',13,'D'),
('Vega','Mu��z','Gonzalo','305930699','87494694',13,'D'),
('Aguirre','Flores','Monserrath','305540464','71299942',13,'D'),
('Rodr�guez','Calvo','Isabella','119820539','72084337',13,'D'),
('Rivera','Garc�a','Kenneth','119530454','86059379',13,'D');



--10-3

Insert into Estudiantes (nombre,primer_apellido,segundo_apellido,cedula,Numero_Encargado,especialidad,tipoEstudiante) values
('Aguilar','Quesada','Sebasti�n','305810577','89936212',7,'D'),
('Badilla','P�rez','Daniel','305790602','84636190',7,'D'),
('Barquero','Cubillo','Kenneth','305800770','85097300',7,'D'),
('Barrantes','Sandoval','Nicole','120230990','87561617',7,'D'),
('Brenes','Aguilar','Luis Felipe','305770906','83305772',7,'D'),
('Brenes','Molina','Melissa','305770611','86037449',7,'D'),
('Cantillo','Sanabria','Alana','305780258','89607123',7,'D'),
('Cordero','Villegas','Maishel','305820159','83141325',7,'D'),
('Delgado','Alvarado','Maria Fer','120200173','83425469',7,'D'),
('Fuentes','Arroyo','Isaac','120150281','60181911',7,'D'),
('Herrera','Montoya','Gabriel','120160391','86327848',7,'D'),
('Jim�nez','Garro','Axel','120210181','72063946',7,'D'),
('Leiton','Trigueros','Neithan','120270116','60253023',7,'D'),
('Madrigal','Cordero','Angelina','120110838','84125511',7,'D'),
('Mart�nez','Gonz�lez','Sebasti�n','120180664','83182935',7,'D'),
('M�ndez','Mora','Efra�n','305820698','89697701',7,'D'),
('Mora','Obando','Jes�s','121760384','71064416',7,'D'),
('Morales','Gonz�lez','M�nica','305790454','60187365',7,'D'),
('Rojas','Cruz','Santiago','120360038','72325001',7,'D');



 




--10-4

Insert into Estudiantes (nombre,primer_apellido,segundo_apellido,cedula,Numero_Encargado,especialidad,tipoEstudiante) values
('Barrantes','Jim�nez','Ian','30580130','60123438',7,'D'),
('Barboza','Torres','Fabi�n','120390211','88141478',7,'D'),
('Bejarano','Alp�zar','Kiara','120220488','83108708 ',7,'D'),
('Calvo','Gonz�lez','Brandon','120290628','71404432 ',7,'D'),
('Chavarr�a','P�rez','Rams�s','120340227','71106419 ',7,'D'),
('Flores','Gonz�lez','Mathias','120320801','89618692 ',7,'D'),
('Loaiziga','Quir�s','Gabriel','120170465','83298392 ',7,'D'),
('Madrigal','Segura','Alejandro','305820217','89540202 ',7,'D'),
('Moraga','Araya','Axel','120360569','86333616',7,'D'),
('Obando','Conejo','Diego','120360528','83686334',7,'D'),
('P�rez','Chavarr�a','Kevin','305790583','71342473',7,'D'),
('Ram�rez','Solano','Nicole','120220223','88705644',7,'D'),
('Salguera','Herra','Kaylin','120350550','61906120',7,'D'),
('S�nchez','Acu�a','Allan','120080503','72305291',7,'D'),
('Solano','Araya','Abigail','120290601','86483322',7,'D'),
('Soto','Barrantes','Mathias','305750637','85934611',7,'D'),
('Vargas','Aguilar','Joselyn','305810078','87701290',7,'D'),
('Villavicencio','Quir�s','Sebasti�n','120130034','87884960',7,'D'),
('Fonseca','Mora','Efram','119920058','87713328',7,'D'),
('Parrales','Castro','Angelina','120390164','86411888',7,'D'),
('Rojas','Delgado','Dayla','119830912','88219425',7,'D'),
('S�nchez','Rodr�guez','Gabriel','119940171','70330923',7,'D'),
('Solano','Ram�rez','Dayla','120090074','71555024',7,'D');



--10-5

Insert into Estudiantes (nombre,primer_apellido,segundo_apellido,cedula,Numero_Encargado,especialidad,tipoEstudiante) values

('Abarca','Baldi','Evelyn','120120409','83858953',3,'D'),
('Ag�ero ','Ferlini','Samuel','120100143','83674727',3,'D'),
('Aguilar','Matamoros','Josu�','120210987','86122130',3,'D'),
('Alarc�n','Vargas','Jaison','305730686','72492246',3,'D'),
('Castillo','Aguilar','Sebasti�n','305790133','84346961',3,'D'),
('Chavarr�a','Rojas','Jaaziel','120320435','71060220',3,'D'),
('Fallas','G�mez','Ana Fernanda','120150018','71811904',3,'D'),
('Garc�a','Romero','Dylan','120240626','61699812',3,'D'),
('Madrigal','Lara','Dayana','120350649','86227564',3,'D'),
('Matute','Mercado','Brandon','119590672','64205431',3,'D'),
('Mayorga','Salazar','Kevin','305790214','85557892',3,'D'),
('Molina','R�os','Kenneth','305790537','85603945',3,'D'),
('Montoya','N�jera','Gerald','305710201','87329510',3,'D'),
('Oporta','Mena','Dania','120180869','88417275',3,'D'),
('Picado','Cordero','Ashley','120360969','83224414',3,'D'),
('Quesada','Mora','Christian','305670701','84033635',3,'D'),
('Rojas','Salazar','Marco','120140620','62600235',3,'D'),
('Sabor�o','P�rez','Monserrat','120410240','60075982',3,'D'),
('Vargas','Villalobos','Jafeth','305770600','87381140',3,'D'),
('Vega','Chac�n','Wedner','120300306','88785075',3,'D'),
('Vega','Brenes','Carlos','305810942','84787784',3,'D'),
('Alvarado','Dinarte','Mariangel','120080486','83157512',3,'D'),
('Angulo','Morales','�scar','119920935','88232381',3,'D'),
('Cede�o','Boza','Sebasti�n','119910158','89359384',3,'D'),
('L�pez','Castro','Nicole','208930023','84380558',3,'D'),
('Chavarr�a','P�rez','Allison','119830319','88467226',3,'D');



--10-6

Insert into Estudiantes (nombre,primer_apellido,segundo_apellido,cedula,Numero_Encargado,especialidad,tipoEstudiante) values
('Rivas','Manzanares','Sherlyn','119320816','72403114',5,'D'),
('Anch�a','Segura','Camila','305770436','85288453',5,'D'),
('Araya','Cerna','Nathaly','120050503','86692323',5,'D'),
('Arias','Conejo','Maredith','120330125','84554611',5,'D'),
('Arias','Fonseca','Sa�l','305760154','86285454',5,'D'),
('Arce','Gonz�lez','Demian','119990140','70878141',5,'D'),
('Azofeifa','Conejo','Monserrath','120280245','88266213',5,'D'),
('Barboza','Uma�a','Manuel','120320889','86618127',5,'D'),
('Chavarr�a','Vega','Dana','120200652','71869699',5,'D'),
('Chac�n','Moreno','Sebasti�n','119830714','72603473',5,'D'),
('Cubero','Abarca','Casey','901280786','87030683',5,'D'),
('Guti�rrez','Ram�rez','�ngel','305750413','71842432',5,'D'),
('Hoelpelman','Jim�nez','Samuel','120250919','62902018',5,'D'),
('Marrero','Granados','Fabiola','120050981','72022247',5,'D'),
('Mu��z','Torres','Amy','120110014','64506444',5,'D'),
('Padilla','Pereira','Daihanne','120400186','88734014',5,'D'),
('P�rez','�lvarez','Luis Alonso','504780836','88035628',5,'D'),
('Ram�rez','Leiva','Mar�a','305770859','87299956',5,'D'),
('Rivera','Coto','Brithany','120100147','72091014',5,'D'),
('Sandino','Calder�n','Emily','119630609','85766266',5,'D'),
('Villalobos','Mar�n','Dilany','120340390','61969137',5,'D'),
('P�rez','Segura','Celinda','119870944','84351400',5,'D');




--10-7A
Insert into Estudiantes (nombre,primer_apellido,segundo_apellido,cedula,Numero_Encargado,especialidad,tipoEstudiante) values

('Arroliga','Bermudez','Isaac','305650595','61832358',11,'D'),
('Ch�vez','Arrieta','Mat�as','120290336','89955114',11,'D'),
('Carazo','Chac�n','Daniela','305790750','70661160',11,'D'),
('Fallas','Montiel','Sof�a','120140532','89254978',11,'D'),
('Guti�rrez','Estellar','Julissa','120350549','88998791',11,'D'),
('Hern�ndez','Montero','Ariana','305770637','88898008',11,'D'),
('Ort�z','Cede�o','Christopher','120350407','62967638',11,'D'),
('Padilla','Montoya','Tatiana','120220325','83610178',11,'D'),
('P�rez','S�nchez','Nicole','120130635','83951144',11,'D'),
('Sanabria','G�mez','Juli�n','305790886','89820295',11,'D'),
('Serrano','Vargas','Allen','3057801723','61809999',11,'D'),
('Villalobos','Vega','Sof�a','120010530','62080517',11,'D'),
('Vivas','Salas','Emily','305730052','85203579',11,'D'),
('Zorto','Rivera','Sa�l','305790079','86081133',11,'D');



--10-7B

Insert into Estudiantes (nombre,primer_apellido,segundo_apellido,cedula,Numero_Encargado,especialidad,tipoEstudiante) values
('Batista','Arley','Jos� David','120130872','87420646',3,'D'),
('Cascante','Cede�o','Bryan','120360174','64291920',3,'D'),
('Cubero','Varela','Jose Gabriel','120230051','60565056',3,'D'),
('Dorado','Vargas','Alexa','120170262','86408593',3,'D'),
('Fonseca','Chavarr�a','Gabriel','305810223','89390079',3,'D'),
('Matarrita','L�pez','Naomy','120330080','62243807',3,'D'),
('Mora','Solano','Jos�','120260785','61971093',3,'D'),
('Morales','Cubillo','Fiorella','305740204','64895799',3,'D'),
('Morales','Herrera','Nathaly','120220966','72078763',3,'D'),
('Morera','Sanabria','Emanuel','120170876','85018524',3,'D'),
('Murillo','Quir�s','Gianluigui','120270348','85196509',3,'D'),
('Picado','Castro','Sof�a','120350537','85184661',3,'D'),
('Reyes','Campos','Josu�','120340266','84741955',3,'D'),
('Rodr�guez','Garc�a','Kiara','120140190','60830337',3,'D'),
('Sanabria','Sanabria','Valery','305780211','84050470',3,'D'),
('Torres','Solano','Gabriel','120150713','72816932',3,'D'),
('Vega','Solano','Rams�s','120000611','89732272',3,'D');





--10-8A
Insert into Estudiantes (nombre,primer_apellido,segundo_apellido,cedula,Numero_Encargado,especialidad,tipoEstudiante) values

('Alvarado','Li','Yanlin','120400187','89313337',10,'D'),
('Barrantes','Jim�nez','Meilyn','119620053','83353198',10,'D'),
('Calder�n','Rodr�guez','Esteban','305750855','60064006',10,'D'),
('Calvo','Villalobos','Monserrat','305780120','89930987',10,'D'),
('Dannembergen','Garro','Sebasti�n','119630625','85233080',10,'D'),
('Elizondo','Mendoza','Ashly','305820431','64863189',10,'D'),
('Giraldo','Correa','Mariana','120110375','83554643',10,'D'),
('Granados','M�ndez','Luciana','120300512','83463643',10,'D'),
('Lizano','Oyuela','Eliam','901270892','70723055',10,'D'),
('Montenegro','S�nchez','Maria Paula','120380787','89954604',10,'D'),
('Retana','Villalobos','Allison','120130928','86012993',10,'D'),
('Salas','Rodr�guez','Asley','305800946','86218044',10,'D'),
('Trejos','Jim�nez','Layonel','305780582','86281880',10,'D'),
('Vargas','Guti�rrez','Kenneth','305760327','71177075',10,'D'),
('Vega','Mas�s','Angie','305760920','83940741',10,'D');



--10-8B
Insert into Estudiantes (nombre,primer_apellido,segundo_apellido,cedula,Numero_Encargado,especialidad,tipoEstudiante) values
('Alvarado','Montoya','Sebasti�n','305680201','84346445',4,'D'),
('Anderson','Sol�s','Evans','305760868','86958833',4,'D'),
('Bosch','Salazar','Sebasti�n','120280321','70977640',4,'D'),
('Casas','Rivera','Valerie','120150303','88354458',4,'D'),
('Castillo','Abarca','Allison','305810257','70528419',4,'D'),
('Gonz�lez','Montero','Gabriel','305640247','87532390',4,'D'),
('Jir�n','Cano','Carles','801270987','62567240',4,'D'),
('Mora','Jim�nez','Bayron Fabi�n','120170911','71096322',4,'D'),
('Montero','Ram�rez','Rodian','110810990','89630509',4,'D'),
('Navarro','Delgado','Fiorella','120300616','85420278',4,'D'),
('Olivas','Cortez','Mar�a','155834359635','71531984',4,'D'),
('P�ez','Araya','Krystel','120140446','86939439',4,'D'),
('Rojas','Madrigal','Johan','120360951','72935801',4,'D'),
('Solano','Arce','Keissi','120220929','85118250',4,'D'),
('Vega','Campos','Daniel','119860736','87963665',4,'D'),
('Vega','Rojas','Luna','305810272','61500736',4,'D'),
('Villalta','C�spedes','�ngel','305730921','72029440',4,'D');



--10-9 A 
Insert into Estudiantes (nombre,primer_apellido,segundo_apellido,cedula,Numero_Encargado,especialidad,tipoEstudiante) values
('Arias', 'Solis', 'Tamara', '120180655', '63320441', 14, 'D'),
('Arrollo', 'Calvo', 'Gabriel', '120080488', '83378791', 14, 'D'), ('Barboza', 'Masis', 'Abigail', '121050978', '86343695', 14, 'D'), 
('Barquero', 'Rodr�guez', 'Maria Fernanda', '305580620', '72792739', 14, 'D'), ('Brenes', 'Z��iga', 'Genesis', '305740152', '84686317', 14, 'D'),
('Brizuela', 'Rojas', 'Olana', '120020531', '89596270', 14, 'D'), ('C�spedes', 'Duarte', 'Kaitlyn', '120260543', '85765784', 14, 'D'), 
('Cordero', 'Mora', 'Anyeri', '119760208', '72477764', 14, 'D'), ('G�mez', 'Rodr�guez', 'Kendall', '119640891', '60353301', 14, 'D'), 
('Guevara', 'Rojas', 'Keilyn', '305820118', '71936708', 14, 'D'), ('Hazel', 'Trigueros', 'Daphane', '120280573', '72925957', 14, 'D'), 
('Meneses', 'Cruz', 'Elizabeth', '120150669', '60137996', 14, 'D'), ('Navarro', 'Calder�n', 'Ericka', '120300795', '70259216', 14, 'D'), 
('Quesada', 'Aguilar', 'Alondra', '120210971', '83664231', 14, 'D'), ('Reyes', 'Arrieta', 'Sofia', '120230057', '72062243', 14, 'D'), 
('Ure�a', 'Esquivel', 'Kerlyn', '120350315', '88653548', 14, 'D'), ('Vargas', 'Solano', 'Maykel', '120310208', '86253317', 14, 'D'), 
('Vega', 'Rojas', 'Abigail', '305760180', '87954596', 14, 'D'), ('Villalta', 'Chan', 'Kaisha', '119840236', '88707172', 14, 'D'); 

--10-9 B 
Insert into Estudiantes (nombre,primer_apellido,segundo_apellido,cedula,Numero_Encargado,especialidad,tipoEstudiante) values
('Acosta', 'Mora', 'Rachel', '120380276', '89434892', 6,'D'), 
('Aguirre', 'Cervantes', 'Isa�', '120260199','86733511', 6,'D'),
('Anderson', 'Rodr�guez', 'Josue', '305800480','86175898', 6,'D'), 
('Ballestero', 'Varela', 'Marco', '305770384','87412204', 6,'D'),
('Calvo', 'Cerdas', 'Jimena', '305790712','86281980', 6,'D'), 
('Catro', 'Vargas', 'Reichell', '120140497','85107462', 6,'D'), 
('Chacon', 'Aguilar', 'Sebasti�n', '120120806','88117446', 6,'D'), 
('Gonz�les', 'Mora', 'Michelle', '305800496','70498337', 6,'D'),
('Lizano', 'Morraga', 'Ver�nica', '120200471','83866340', 6,'D'), 
('Loaiza', 'Calder�n', 'Julio', '305800415','71425169', 6,'D'),
('Mata', 'Hern�ndez', 'Keylor', '120220963','89382112', 6,'D'), 
('M�ndez', 'Azofeifa', 'Alison', '120360796','84002317', 6,'D'), 
('Picado', 'Solano', 'Merilan', '305790161','72495080', 6,'D'), 
('Ram�rez', 'Valverde', 'Ariela', '305760765','62906867', 6,'D'),
('Salazar', ' Barboza', 'Emily', '305770350','60478141', 6,'D'), 
('Villalobos', 'Castillo', 'Enyell', '305780218','62041313', 6,'D'); 

--10-10A

Insert into Estudiantes (nombre,primer_apellido,segundo_apellido,cedula,Numero_Encargado,especialidad,tipoEstudiante) values
('BULA',	  'CALVO',	     'IVANNA',     '305790631', '89470055','2','D'),	
('AGUILAR',   'BALLESTERO',	 'MATHIAS'	,  '119910091', '70128690','2','D'),
('CONEJO',	  'CALVO',     	 'DAHIAN',	   '120150416', '89116846','2','D'),
('GODINEZ',	  'DURAN',	     'SEBASTIAN',  '120250425', '88948312','2','D'),
('GORDON',	  'ECHAVARRIA',	 'DANNARA',	   '120300242', '87310959','2','D'),
('GUTIEREZ',  'BARQUERO',	 'JESUS',	   '305760801', '88552728','2','D'),
('GUTIERREZ', 'OABIOAGUA',	 'JESHUE',	   '120190047', '61188758','2','D'),
('HERNANDEZ', 'TORRES',	     'AXEL',	   '305810547', '72338856','2','D'),
('HIDALGO',	  'SERRANO',	 'DANIELA',	   '120210780', '22535400','2','D'),
('JARQUIN',	  'MORA',	     'NANCY',	   '305760932', '85579347','2','D'),
('NAJERA',	  'SERRANO',	 'KEILYN',	   '120200529', '86917143','2','D'),
('PEREZ',	  'CALVO',	     'MARIPAZ',	   '120370587', '84991675','2','D'),
('PICADO',	  'CHAVEZ',	     'KEILYN',	   '305780265', '70659261','2','D'),
('RODRIGUEZ', 'NIEBLES',	 'MARIANA',	   '120260238', '85952787','2','D'),
('SEGURA',	  'CAMPOS',	     'ANDREW',	   '120150698', '85862258','2','D'),	
('VEGA',	  'ROJAS',	     'VICTORIA',   '305460181', '87954596','2','D');


--10-10B
Insert into Estudiantes (nombre,primer_apellido,segundo_apellido,cedula,Numero_Encargado,especialidad,tipoEstudiante) values
('Alvarado','Gonz�lez','Kristel','305760084','85715566',11,'D'),
('Brenes','Olmos','Joshua','120310753','63168301',11,'D'),
('Calder�n','Lewis','Amanda','305800312','63815796',11,'D'),
('Calder�n','Cisneros','Nicole','120170014','84184661',11,'D'),
('Camacho','Castillo','Kevin','305780831','87121389',11,'D'),
('Escobar','L�pez','Nicole','305800047','61058519',11,'D'),
('Olsen','C�rdenas','Jimena','120380390','85814697',11,'D'),
('Pacheco','Rojas','Mariana','305720008','84528946',11,'D'),
('P�rez','Chavarr�a','Keisy','305790582','60739874',11,'D'),
('Ru�z','Jarqu�n','Eidan','120280047','72258513',11,'D'),
('Solano','Fallas','Samantha','120200472','86399259',11,'D'),
('Vargas','Conejo','Camila','119910161','86399259',11,'D');

--11-1
Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values
('120040219','Jimena','Alp�zar','Sol�s',1,'88403940','D'),
('305710609','Viviana','Alvarado','Fallas',1,'71020729','D'),
('120060425','Wendy','Alvarado','Hern�ndez',1,'83739066','D'),
('119640612','Sebasti�n','Calvo','Coto',1,'71245462','D'),
('119920020','Gabriel','Cervantes','Jim�nez',1,'25180840','D'),
('119990004','Ariana','Ch�ves','Calvo',1,'88129683','D'),
('119930406','Helena','Cordoba','Rangel',1,'71725014','D'),
('119950359','Valerie','Garc�a','Fernand�z',1,'88877617','D'),
('305700745','Valentina','Garro','Salazar', 1,'25180475','D'),
('120070051','Kiara','Hern�ndez','Cajina',1,'22715772','D'),
('120080037','Fiorella','Mena','Conejo',1,'84425272','D'),
('119990841','Allison','Mora','M�rquez',1,'87031337','D'),
('120040946','Sof�a','Navarro','Villalobos',1,'88988112','D'),
('119830774','Mar�a Paula', 'Quesada','Ramirez',1,'84494888','D'),
('120030337','Fabiana','Padilla','Vargas',1,'72618391','D'),
('119790998','Natalia','Rodr�guez','Dur�n',1,'61763515','D'),
('119840882','Danisha','Sanchez','Jhonson',1, '88082214','D'),
('119840232','Isaac','Vega','Rivera',1,'83043020','D'),
('119870269','Mauricio','Zu�iga','Chac�n',1,'84336037','D');

--11-2
Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values
('305750217','Kristal','Amador','Aguilar',12,'85823612','D'),
('119680392','Andr�s','Aguilar','Silva',12,'61272660','D'),
('703350982','Michelle','Araya','Rojas',12,'22710264','D'),
('119890675','Amanda','Brenes','Araya',12,'88220549','D'),
('155850445032','Wesner','Campos','L�pez',12,'71815002','D'),
('504700813','Derek','Caravaca','Apuy',12,'85437560','D'),
('120030336','Yaina','Chaves','Fonseca',12,'87032050','D'),
('119940863','Juan Pablo','Elizondo','V�quez',12,'22790986','D'),
('119840422','Luis Diego','Gonz�lez','Rojas',12,'22790653','D'),
('305630383','Juan David,','Hern�dez', 'Montoya',12,'22793865','D'),
('119870387','Sof�a', 'Lai','Solano',12,'88995656','D'),
('120020940','Dariana','Lor�a','Solano',12,'62783342','D'),
('120010785','Kevin','Matamoros','Medrano',12,'88114029','D'),
('402750170','Franklin', 'Mej�a','Ortega',12,'84608942','D'),
('305750213','Manuel','Mendoza','Acevedo',12,'89685178','D'),
('305720039','Eithan','Mora','Gonz�lez',12,'71409788','D'),
('119980749','Santiago','Mu�oz','Abarca',12,'71215089','D'),
('119880516','C�sar','Salvador','Quir�s',12,'88492927','D'),
('120090993','Santiago','S�nchez','Andrade',12,'72853859','D'),
('119980840','Camila','Torres','Delgado',12,'60132341','D');

--11-3
Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values
('305690906','Angel','Badilla',	'Fonseca',12,'87144684','D'),
('120080395','Dilan' ,'Boza','Torres',12,'87812977','D'),
('305750152','Diego' ,'Brenes','Calvo',12,'88063815','D'),
('120020541','Timothy',	'Cespedes','Sanchez',12,'60056315','D'),
('120020079','Valentina','Conejo','Mesen',12,'60662318','D'),
('305750246','Josue','Conejo','Villalobos',12,'83432781','D'),
('119680992','Nathalia','Cordero','Quiros',12,'83368780','D'),
('1199101490','Isacc','Espinoza','Chacon',12,'89574224','D'),
('120060196','Derek','Espinoza','Salazar',12,'62111378','D'),
('119840891','Andy','Fonseca','Vega',12,'86594874','D'),
('119830113','Krystel', 'Hernandez','Meza',12,'83110769','D'),
('120050813','Edwin','Luna','Cienfuegos',12,'60039075','D'),
('119940247','Sebastian','Meneses','Barrantes',12,'86760646','D'),
('120080338','Guideon','Montero','Vargas',12,'61170160','D'),
('120020862','Daniel','Sanabria','Naranjo',12,'60594962','D'),
('120030549','Alexis','Torres','Orellana',12,'86597883','D'),
('119970897','Lena ','Van Der Veer','Benavides',12,'87068223','D'),
('305720536','Galilea',	'Vega',	'Mora',12,'64047373','D'),
('305710443','Reichell' ,'Zu�iga','Mora',12,'63552289','D');
--11-4
Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values

('305630752','Jeremy','Aguilar','Bola�os',12,'84733253','D'),
('119740098','Mar�a','Alcazar','Arroyo',12,'88184552','D'),
('120060025','Madedelain','Carranza','Rodr�guez',12,'84083769','D'),
('305640538','Elizabeth','Cascante','Rodr�guez',12,'60066406','D'),
('119520928','Aaron','Castro','Madrigal',12,'60706893','D'),
('119600209','Sebast�an','Fern�ndez','Soto',12,'70121481','D'),
('119810192','Sarai','G�nzalez','Arrieta',12,'87801940','D'),
('120040931','Juliana' ,'Lacayo','Medina',12,'71978761','D'),
('901210404','Gabriel','Mart�nez','Hidalgo',12,'89342469','D'),
('305730664','Kiara' ,'Montenegro','Rojas',12,'25182183','D'),
('305700925','Nicole','Quir�s','Picado',12,	'63206240','D'),
('305630275','Sebastian','Rojas','Picado',12,'88970055','D'),
('119830101','Juliana','Trejos'	,'Bonilla',12,'22786550','D');


Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values
------------------------------11-5A------------------------------
('119920843', 'Abigail', 'Artavia', 'Cerdas',6, '22786573', 'D'),
('119840415', 'G�nesis Mariana', 'Campos', 'Rojas',6, '60480930', 'D'),
('119930311', 'Leonardo Daniel', 'Fallas', 'Carranza',6, '84130033', 'D'),
('305710817', 'Emmanuel', 'Flores', 'Mar�n',6, '89896236', 'D'),
('305720204', 'Meisis Francella', 'Jarquin', 'Obregon',6, '71606360', 'D'),
('120050389', 'Michael', 'Jimenez', 'Segura', '72637492',6, 'D'),
('119830089', 'Ana M', 'Quesada', 'Vargas', '84676043',6, 'D'),
('119920083', 'Kianny', 'Sanabria', 'Salazar', '88113779',6, 'D'),
('208730865', 'Melanie', 'Soto', 'Alcazar',6, '87465363', 'D'),
('120050006', 'Amy Elissa', 'Z��iga', 'Barrantes',6, '84687334', 'D'),
('119930274', 'Juli�n Andrey', 'Z��iga', 'Delgado',6, '87407833', 'D'),

------------------------------11-5B------------------------------
('305720592', 'Jefferson', 'Brenes', 'Calvo',12, '88063815', 'D'),
('305730315' ,'Bianca',	'Camacho',	'Arias',12, '85588009', 'D'),
('119840365', 'Kamila', 'Chaves', 'M�ndez',12, '89604007', 'D'),
('305690476', 'Dennise', 'Conejo', 'Villalobos',12,'83432781', 'D'),
('119960280', 'Ariana', 'Esquivel', 'Conejo',12, '83087435', 'D'),
('119940871', 'Alejandra','Flores', 'S�nchez',12, '85308354', 'D'),
('305680443', 'Fiorella', 'Guerrero','Richmond',12,'84205522', 'D'),
('120080356', 'Daniela', 'Hern�ndez', 'Gutierrez',12, '87384188', 'D'),
('120080475', 'Valentina', 'Montoya',	'Gutierrez',12, '85210483', 'D'),
('305710299', 'Natalie', 'Quesada',	'Berrios',12,'60436090', 'D'),
('119830690', 'Jocelyn', 'Quesada',	'Vega',12,'88452372', 'D'),
('120050573', 'Abigail', 'Rodr�guez', 'Bonilla',12, '72206822', 'D'),
('119820028', 'Fabian Alejandro', 'Rojas',	'Boza',12,	'62255606', 'D'),
('119850230', 'Ariela',	'Salazar', 'Vargas',12,	'84651027', 'D'),
('119980722', 'Sofia',	'Sirias', 'Meneses',12,	'83853524', 'D'),
('119930234', 'Santiago',	'Solano', 'Garro',12,'87047635', 'D');

Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values
-------------------------------- 11-6a -------------------------------
('120010941',	'Max'	,'Alvarez',	'Rodr�guez' ,4,	'84712538','D'),
('305720923'	,'Amanda Yuliana',	'Araya', 'Pineda',4,'86250566','D'),
('305680502'	,'Brian',	'Betanco',	'Blandon',4,	'87652852','D'),
('119760312'	,'Dixiany'	,'Carpio'	,'Valenzuela',4	,'71579898' ,'D'),
('119960727'	,'Paris Michelle',	'Castrillo'	,'Pastran',4,	'87057295','D'),
('186201318936'	,'Santiago Jos�',	'Ciscar'	,'Rincon',4	,'70999772','D'),
('305710824'	,'Wendy Pamela',	'Elizondo',	'Mes�n'	,4,'85183065','D'),
('119920460'	,'Dereck Arturo',	'Gutierrez'	,'Araya',4,	'60587488','D'),
('119950757'	,'Naomy Sof�a',	'Jacamo'	,'Ram�rez',4,	'64312007','D'),
('119880919'	,'Bryan Andres'	,'Jim�nez'	,'Gonz�lez',4	,'71776190','D'),
('305620446'	,'Gerald'	,'Kepfer','Fonseca'	,'89487458',4,'D'),
('120040025'	,'Gabriel',	'Labra'	,'Castillo'	,'22799368',4,'D'),
('801440564'	,'Kareling Francela',	'Morales',	'lazo'	,4,'84299391','D'),
('120020532'	,'Nathalia Yariela',	'Mu�oz'	,'L�pez'	,4,'22785345','D'),
('119820644'	,'Ian Alexander',	'Quir�s',	'Cascante'	,4,'86712136','D'),
('305720609'	,'Isaac Josu�'	,'Vega'	,'Mendieta',4	,'72107327','D'),
------------------------------  11-6b -------------------------------------------
('119990159',	'Mateo Llarol',	'Campos',	'Ure�a',7	,'89375131','D'),
('119830371',	'Gabriel',	'Conejo',	'Guti�rrez'	,7,'60502608','D'),
('119830685',	'Emily',	'Fern�ndez'	,'Cordero'	,7,' 87029010','D'),
('120040512',	'Sophia Alexandra',	'L�pez',	'Hern�ndez'	,7,'89093577','D'),
('119950681',	'Naydelyn Juliana',	'L�pez',	'Serrano'	,7,'86047781','D'),
('305660145',	'Manfred Steve',	'Mar�n',	'Mart�nez'	,7,'89087134','D'),
('305710275',	'Maria'	,'Rojas',	'Vega',7,	'70193056','D'),
('119540137',	'Nayeli Andrea',	'S�nchez',	'Aguilar',7,	'84880944','D'),
('120060426',	'Aaron',	'Seas',	'Zu�iga',7,	'60483936','D'),
('119940250',	'Ariana Graciela',	'Segura',	'Salazar',7,	'88774186','D'),
('305730299',	'Anthony Gabriel',	'Solano', 'Vega',7,	'87817933','D'),
('305700721',	'Daniel',	'Solano'	,'Vega',7,	'88889937','D'),
('155832378033',	'Wilmer Alberto',	'Ulloa',7,	'Osorio'	,'72723768','D'),
('119970152',	'Tiago','Vargas',	'Astua',7,	'84439883','D');


Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values
---------------------------------11-7 A-----------------------------------------------
('1119520333','Manuel','Baltodano','Brenes',4,'83676857','D'),
('305720823','Gerald Fabricio','Cascante','Jara',4,'22799895','D'),
('119970093','Abraham Josu�','Chac�n','Azofeifa',4,'61347427','D'),
('119830430','Yasell Esteban','Chavarr�a','S�nchez',4,'62248371','D'),
('305750559','Kendall Zenen','Fallas','Rivera',4,'71400657','D'),
('119620526','Justin','Meneses','Quesada',4,'72908481','D'),
('305620103','Jerry','Monge','Chavez',4,'72477760','D'),
('305720063','Math�as','Mora','Campos',4,'84314223','D'),
('305650531','Mar�a  Fernanda','Mora','Morales',4,'85854130','D'),
('119990247','Daniel','Navarro','Zu�iga',4,'71770899','D'),
('305740422','G�nesis Milena','N��ez','Ceciliano',4,'85997634','D'),
('119840924','Jes�s Andrey','Rojas','Alvarez',4,'86338425','D'),
('119870281','Matias','Ruiz','Carballo',4,'89814856','D'),
('119910356','Emily Ariana','Sand�','Pichardo',4,'87622940','D'),
('119960934','Keissy','Sandoval','Rojas',4,'87681265','D'),
('305720043','Franklin David','Vargas','Aguilar',4,'87701290','D'),
('119980682','Max Albert','V�zquez','Alvarado',4,'89102311','D'),
('119920036','Deivid Abraham','Villalobos','Obando',4,'89348222','D'), 

---------------------------------11-7 B---------------------------------------------------------
('305700279','Laurens','Alvarado','Vega',6,'87792946','D'),
('120070600','Sebastian','Badilla','Mora',6,'86037522','D'),
('119900157','Isaac Mart�n','Barquero','Cubillo',6,'85097300','D'),
('305690134','Ashley','Gonzalez','Dur�n',6,'60348480','D'),
('402760832','Leiner','Hern�ndez','Barquero',6,'22745168','D'),
('119930137','Nashammy','Lynch','Fern�ndez',6,'71132802','D'),
('305710873','Sebastian','Montoya','Lopez',6,'89499823','D'),
('120020470','Mar�a Jos�','Mora','Padilla',6,'87591793','D'),

('119900435','Celeste Yariana','S�nchez','G�mez',6,'61103833','D'),
('801260786','Emily Ariana','Sandino','Calder�n',6,'84594700','D'),
('119840919','Klaysha Marisa','Vega','Arley',6,'85629356','D'),
('305720588','Madeline Helena','Zumbado','Chaves',6,'87645041','D');

Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values

---------------------------------11-8 A----------------------------------------------------------
('305740074','Abigail','Aguilar','Arguello',10,'89464132','D'),
('119970467','Leonardo','Alvarado','Uma�a',10,'61457425','D'),
('119900057','Daniel Alberto','Arroyo','Villalobos',10,'88527161','D'),
('305700711','Savahana','Brenes','Gonz�lez',10,'87207363','D'),
('119870169','Gabriela','Castro','Aguilar',10,'87775258','D'),
('305730467','Valeria','Cerdas','Calvo',10,'61951785','D'),
('120080446','Steven','Conejo','Madriz',10,'71414556','D'),

('120000178','Nazareth','Cordero','Montoya',10,'71304718','D'),
('119930694','Ivonne Anay','Giboulet','Duarte',10,'71142498','D'),
('305750228','Dylan Eduardo','Gonz�lez','Hern�ndez',10,'88707147','D'),
('305710686','Gabriel Alonso','Lizano','Campos',10,'88283788','D'),
('305720953','Tatiana Nicole','Seas','Montero',10,'60817392','D'),
('119880392','Ariana Gabriel','Z��iga','Calder�n',10,'88439283','D'),

-----------------------------------11-8 B---------------------------------------------------
('119570521','Johan Steven','Ara�z','Mart�nez',5,'88614260','D'),
('119930115','Gerald Ignacio','Barquero','Jim�nez',5,'6356810','D'),
('305620393','Fredd','Castro','Zu�iga',5,'87433475','D'),
('119830075','Alexa Michelle','Garita','Porras',5,'86866302','D'),
('305640158','Jimena','Hern�ndez','Serrano',5,'87550644','D'),
('119700376','Johan','Hern�ndez','L�pez',5,'89575328','D'),
('120010831','Jason Daniel','Mena','Vasquez',5,'72943685','D'),
('120000390','Ezequiel','Monge','Badilla',5,'71607864','D'),
('305670072','Christopher Gabriel','Mora','S�nchez',5,'70142625','D'),
('120020387','Anthony Jos�','Ram�rez','Zeled�n',5,'87396406','D'),
('119360121','Anthony Josu�','Salazar','Corrales',5,'89604869','D'),
('119990617','Milena','Vilchez','Rojas',5,'83552662','D'),
('120060189','Allison','Zelaya','Mendiola',5,'61744645','D'),
('119650883','Jocksan','Zeledon','Montero',5,'71963927','D');

Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values

-------------------------------11-9 A-----------------------------------------------------------
('119430437','Andrey','Calderon','Alvarez',7,'84012153','D'),
('305730352','Dayan','Delgado','Salas',7,'72561567','D'),
('119830685','Emily','Fern�ndez','Cordero',7,'87194189','D'),
('305740070','Kristel Michelle','Martinez','Sandoval',7,'22780303','D'),
('305700094','Anderson','Mu�oz','Linares',7,'60184030','D'),
('305740188','Germajones','Pe�a','Cornejo',7,'87593430','D'),
('305720408','Christopher','Peraza','Aguilar',7,'70785689','D'),
('305730121','Saici Tatiana','Quesada','Moreno',7,'63874227','D'),
('305710275','Mar�a Paula','Rojas','Vega',7,'70193056','D'),
('119600682','Dennis Mat�as','Salas','Hern�ndez',7,'88084796','D'),
('119720962','Asley','Sanabria','Soto',7,'64102553','D'),
('120090839','G�nesis','Solano','Campos',7,'62676511','D'),
('120020562','Andrew Gabriel','Ure�a','Cambronero',7,'89604633','D'),
('305730023','Daniel Ricardo','Zumbado','Azofeifa',7,'85592669','D');
Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values


--------------------------------11-9 B-----------------------------------------------------
('120020505','Jill Fiorella','Alpizar','Viachica',12,'70700119','D'),
('119950787','Danae','Barcenas','Montero',12,'83625543','D'),
('119990269','Alejandra Tamara','Calvo','Reyes',12,'86542058','D'),
('119860377','Ismael','Castro','Aguilar',12,'71124408','D'),
('119960644','Dylan','Delgado','Granados',12,'88488435','D'),
('119870392','Rechell','Flores','Largaepsada',12,'87545482','D'),
('119890508','Valeska Sabrina','Garro','Meneses',12,'85901501','D'),
('119860952','Dariana','Luna','Campos',12,'61084380','D'),
('305740638','Alexa','Luna','Pinto',12,'86149434','D'),
('119910658','Josu� Arturo','Mes�n','G�chez',12,'88313426','D'),
('120060231','Andrey Manuel','Monge','C�spedes',12,'70033857','D'),
('305750516','Nidia Alana','Ortega','Conejo',12,'25182150','D'),
('119890681','Aynara','Ramirez','Murillo',12,'72954800','D'),

('119930234','Santiago Alonso','Solano','Garro',12,'87047635','D'),
('703280843','Jimena','Valerio','Fonseca',12,'89630757','D');
-- 12-1
Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values

('119570818','Jose','Arg�ello','Montoya',1,'89884556','D'),
('119620253','Tamara','Boza','G�mez',1,'83556049','D'),
('119590523','Oscar David','Calder�n','Meneses',1,'86637223','D'),
('305660617','Jimena','Escalante','Murillo',1,'71116707','D'),
('305660461','Mariana','Espinoza','Solano',1,'86027638','D'),
('119360442','Leonardo','Flores','Luna',1,'71127212','D'), 
('305670782','Melissa','Hern�ndez','Barquero',1,'88104961','D'), 
('119650122','Bianca','Lobato','Sol�s',1,'88509794','D'), 
('119710685','David','Mena','Mora',1,'72764511','D'), 
('119640491','Wanda','M�ndez','Calder�n',1,'84243858','D'), 
('119620771','Allison','Quintero','Villachica',1,'62604191','D'), 
('119800720','Allison','Rodr�guez','Niebles',1,'83184519','D'), 
('119680055','Sof�a','Rodr�guez','Arce',1,'85188655','D'), 
('305670535','Ilanith','Salas','N�jera',1,'88504253','D'), 
('305640830','Sa�l','Salazar','Sanabria',1,'84310414','D'), 
('119780633','Andrey','Somarribas','Arronis',1,'62803122','D'), 
('119550844','Raquel','Soto','Mar�n',1,'89191441','D'), 
('119760060','Anthony','Vargas','Jim�nez',1,'88140399','D'),
('119680132','Emily','Z��iga','Campos',1,'60055497','D');

select * from Estudiantes

--12-2 A 
Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values

('305670635','Kendall','Alvarado','Arias',2,'85039761','D'),
('305680462','Juan Pablo','Arce','Flores',2,'86887305','D'),
('119590100','Jimena','Barahona','Rodr�guez',2,'85201758','D'),
('305690073','Amanda','Brenes','Carranza',2,'71951391','D'),
('119500004','Keylor','Conejo','Calder�n',2,'87451524','D'),
('119610346','Jennyfer','Chavarr�a','Montoya',2,'83115101','D'),
('119600684','Melany','Cruz','Montoya',2,'86075624','D'),
('119630118','Leslie','Cubillo','Calder�n',2,'86756644','D'),
('119510128','Gael','Fonseca','Brenes',2,'84118071','D'),
('119700132','Oriana','Lozada','Guti�rrez',2,'71495683','D'),
('305630651','Naidelyn','Mairena','Fr�vega',2,'60883268','D'),
('119520899','Brandon','Mar�n','Linares',2,'87187076','D'),
('119800387','Isabella','Mart�nez','Solano',2,'72816932','D'),
('305650981','Steven','Mora','Rodr�guez',2,'87530053','D'),
('305670177','Jacqueline','Ninapayt�n','Alvarado',2,'88889152','D'),
('801410959','Jostin','Reyes','Gait�n',2,'87672464','D'),
('119660958','Rams�s','S�nchez','Venegas',2,'85697405','D'),
('119760419','Brandon','Vega','Calvo',2,'63875422','D'),
('119690108','Catalina','Vega ','Hern�ndez',2,'61108098','D');

--12-2 B
Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values

('305540646','Joseth','Alvarado','Montoya',10,'86595721','D'),
('119120482','Yaret','Calder�n','Mata',10,'85118767','D'),
('305590975','Marco','Conejo','Soto',10,'40702224','D'),
('604950615','Gabriel','Cordero ','Guzman',10,'72920805','D'),
('305520254','Melanie','Espinoza','Montoya',10,'71508092','D'),
('119490129','Daniel S.','Fonseca','Salas',10,'83147909','D'),
('119180689','Dennise','Gomez','Orozco',10,'86592732','D'),
('305600461','Jos�','Jim�nez','Segura',10,'72637438','D'),
('119020868','Johan Josu�','Romero','Alvarado',10,'71434378','D'),
('118970700','Christopher','Salazar','Castillo',10,'72630290','D'); 

--12-3
Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values

('305670869','Santiago','Aguilera','Montero',13,'84264645','D'),
('402730472','Avril','Ast�a','Salas',13,'88434846','D'),
('119740315','Bryan','Batista','Guzm�n',13,'85198052','D'),
('118930537','Kenneth','Cede�o','M�ndez',13,'85010621','D'),
('119540652','Glenda','Chavarr�a','Balmaceda',13,'71449389','D'),
('119570142','Ander Jafet','Esquivel','Chac�n',13,'60194436','D'),
('119720816','Michelle','Fern�ndez','Vindas',13,'71063826','D'),
('305640052','Isacc','G�mez','Molina',13,'71982538','D'),
('119480944','Jorge','G�mez','Rodr�guez',13,'89976190','D'),
('305620756','Anyeli','Herrera','Fonseca',13,'72277216','D'),
('119710153','Isaac','Jim�nez','Duarte',13,'89249953','D'),
('305620111','Josu�','Jim�nez','Fern�ndez',13,'86838471','D'),
('119590033','Alondra','Miranda','Murillo',13,'84488070','D'),
('119680738','Daniel','Morales','L�pez',13,'83977751','D'),
('119770983','Sebasti�n','Reyes','Campos',13,'84741955','D'),
('119570261','Winston','Segura','Rosales',13,'71355129','D'),
('119720078','Nicole D.','Solano','Pichardo',13,'88631283','D'),
('155826859916','Marlon','Urroz','May�n',13,'70734191','D'),
('305670645','Eber','Vel�squez','Ram�rez',13,'88856005','D');

--12-4 A
Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values

('119430837','Roberto','Alvarado','Espinoza',12,'88431966','D'),
('119510183','Katherine','Campos','Guzm�n',12,'88404481','D'),
('119400388','Gabriel','Conejo','Montero',12,'70734855','D'),
('305640190','Shannay','Garro','Picado',12,'87389363','D'),
('119800691','Andrey','Garro','Oreamuno',12,'85941010','D'),
('119030806','Gabriel','Granados','Hern�ndez',12,'87179824','D'),
('305670994','Yuliana M.','Guti�rrez ','Brenes',12,'60120244','D'),
('119740310','Fiorella','Jarqu�n','Alem�n',12,'70332110','D'),
('119340881','Jimena','Leandro','Salazar',12,'87959214','D'),
('305650995','Sherlyn','Lizano','Blanco',12,'72091638','D'),
('305580324','Melany','Luna','Castillo',12,'85972002','D'),
('305660397','Larissa','Mes�n','Monestel',12,'83275710','D'),
('901190293','Ethan','Monge','Edwards',12,'72731020','D'),
('119640479','Arlyn','Piedra','Castillo',12,'62613398','D'),
('118730419','Ana Aurora','Ruiz','L�pez',12,'86528367','D'),
('119590730','Aida','Sol�s','Jim�nez',12,'87897075','D'),
('305660582','Kenay','Soto','Badilla',12,'89847084','D'); 

--12-4 B 
Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values

('119710300','Joseline','C�rdenas','Gonz�lez',4,'89668050','D'),
('119550331','Nelson','Cardona','Rocha',4,'60877161','D'),
('119510616','Jonathan','Centeno','Garc�a',4,'72627724','D'),
('305630639','Antony','Fonseca','Arrieta',4,'62586983','D'),
('119070952','Jostyn','Garc�a','P�rez',4,'88102563','D'),
('305660561','Bryan','Madrigal','Calvo',4,'85845073','D'),
('305680018','Ian','Ovares','Rivera',4,'84150473','D'),
('119670147','Anderson','Quesada','Rueda',4,'71971618','D'),
('119790965','Juli�n','Quesada','Sancho',4,'89512085','D'),
('305670148','Swami','Rojas','Segura',4,'86401000','D'),
('604980894','Diego A.','S�enz','Merino',4,'63934327','D'),
('119740939','Fabrizio','Segura','Valverde',4,'83789265','D'),
('305680967','Keith','Sol�s','Mora',4,'8553-9488','D'); 

--12-5 A 
Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values

('119650625','Xochitl F.','�lvarez','Cordero',12,'83597125','D'),
('119680439','Karina','Barquero','Cubillo',12,'84208898','D'),
('119800725','Sebasti�n','Barrantes','Cordero',12,'60181979','D'),
('119640320','Ashley','Bola�os','Salazar',12,'86957767','D'),
('119620982','E. Charlotte','Calvo','Sand�',12,'83213501','D'),
('119720409','Andr�s','Carpio','Chac�n',12,'83414072','D'),
('305650046','Allison','Guevara','Ram�rez',12,'85212012','D'),
('305660090','Galilea','Guevara','Porras',12,'72613497','D'),
('119750484','Nissi','Monge','Quir�s',12,'83180398','D'),
('305640435','Melanie','Mora','Sanabria',12,'89719409','D'),
('119350579','Eykel','Orozco','Guti�rrez',12,'87636489','D'),
('119640233','Fabiola','Parra','Z��iga',12,'87059399','D'),
('119290154','Paula','Rodr�guez','Mar�n',12,'86423430','D'),
('305670840','Dana','Rom�n','Chinchilla',12,'60327432','D'),
('305630580','Mar�a Jimena','Salguero','Conejo',12,'85638662','D'),
('119510765','Melanie','S�nchez','Mu�oz',12,'88498954','D'),
('305680718','Adriana S.','Sol�s','Torres',12,'88910282','D'); 

--12-5 B
Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values

('119680046','Kenneth','Cambronero','Bravo',4,'87642763','D'),
('119430409','Johaf','Carpio','Mora',4,'84097506','D'),
('305680831','Camille','Cordero','Barrera',4,'87683567','D'),
('305620616','Luis Carlos','Flores','Mu�oz',4,'70108468','D'),
('119630726','Kevin','Guzm�n','Borb�n',4,'88155208','D'),
('119240782','Allen','Hern�ndez','Madrigal',4,'85536694','D'),
('119240782','Sebasti�n','Hern�ndez','Sol�s',4,'8519-6979','D'),
('119240877','Joseph','Jim�nez','Alp�zar',4,'60377121','D'),
('305660667','Diego A.','Mart�nez','Ag�ero',4,'88498607','D'),
('305620972','Lynsay','Monge','Rojas',4,'87224114','D'),
('305660300','Ricardo','Morales','Montero',4,'60261830','D'),
('119750627','Caleb','Ord��ez','Romero',4,'83996355','D'),
('119770447','Doryan','Reyes','Rodr�guez',4,'60023076','D'),
('305660155','Keilyn','Salazar','Garro',4,'88240438','D'); 

--12-6 A 
Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values

('119650293','Juan Diego','Aguilar','Vega',15,'88129676','D'),
('305640758','Daniela','Arronis','Brenes',15,'86169243','D'),
('119490953','Valeska','Barahona','Monge',15,'87261850','D'),
('119720836','Keilyn','Barrantes','Castrillo',15,'84693436','D'),
('119800461','Aylin','Berm�dez','L�pez',15,'87435860','D'),
('119720582','Paula V.','Campos','Gutierrez ',15,'89871904','D'),
('119770376','Sof�a','Esquivel','Castillo',15,'88116659','D'),
('402710526','Angily','Mart�nez','Vega',15,'87829891','D'),
('119680348','Violeth','Mendoza','Amador',15,'70522988','D'),
('119610831','Tiffany','Montero','S�nchez',15,'64236268','D'),
('305640715','Yeslin','Ot�rola','Arias',15,'86327701','D'),
('305620513','Mar�a','Rivera','Rojas',15,'72835246','D'),
('305670380','Sheilyn','S�nchez','Rodr�guez',15,'87425720','D'),
('119390215','Diana','Valverde','Barrientos',15,'88212477','D'),
('305630527','Mari Darisha','Watson','Castro',15,'60706893','D');

--12-6 B 
Insert into Estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values

('305600061','Jordy','Barrantes','Rodr�guez',7,'70548440','D'),
('305660244','Roy','Bonilla','Rojas',7,'85680672','D'),
('305580235','Anthony','Coto','Barquero',7,'60832256','D'),
('305660264','Diego','Fallas','Esquivel',7,'88482799','D'),
('305600791','Naigel','Gonz�lez','Gamboa',7,'71263918','D'),
('119800459','Skolyn','Guti�rrez','Berrios',7,'85462285','D'),
('119650687','Kendall','Leandro','Segura',7,'60098452','D'),
('119720071','Aar�n','Lor�a','Meza',7,'70886193','D'),
('119730293','Juliana','Mena','V�squez',7,'72943685','D'),
('119670249','Lizeth','Orozco','Mes�n',7,'88118297','D'),
('305640275','Melanie','Picado','Fonseca',7,'63130694','D'),
('305640837','Cristian','P�cado','Arley',7,'84931919','D'),
('119770440','Valeria','Quesada','Vargas',7,'83193127','D'),
('119730889','Britany','Rodr�guez','Leit�n',7,'72040994','D'),
('119770325','Emmanuel','Rojas','D�az',7,'64305162','D'),
('305660674','Mar�a','Santana','Sol�s',7,'85573230','D'),
('119770082','Valeska','Sequeira','Montiel',7,'71328343','D'),
('305570714','M�nica','Vargas','Mendoza',7,'83913614','D'),
('119530490','Kristel','Villalobos','Fern�ndez',7,'86435300','D'),
('119460205','Alayne','V�lchez','Rojas',7,'83552662','D'); 

--12-7 A
Insert into estudiantes (cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values

('119740443','Cristopher','Alvarado','Pe�a',9,'87079207','D'),
('305660902','Byron Josu�','Benavides','�lvarez',9,'89151662','D'),
('119630524','Gabriela','Conejo','Miranda',9,'83263705','D'),
('305660243','Sebasti�n','Garita','Ram�rez',9,'88159141','D'),
('119600357','Juli�n','Gonz�lez','Lizano',9,'89211531','D'),
('119530364','Dominique','Gonz�lez','Jim�nez',9,'64897288','D'),
('119590551','Krhysler','Jarqu�n','Matamoros',9,'87755141','D'),
('119640077','Juan Carlos','L�pez','Quesada',9,'61026038','D'),
('119750386','Noah','Mora','Venegas',9,'70920807','D'),
('119600650','Jimena','Ortiz','Z��iga',9,'86584822','D'),
('119670762','Cristian','Pati�o','Campos',9,'83503468','D'),
('119670560','Yanasha','Quir�s','Aguilar',9,'83434691','D'),
('119200834','Jos� David','Sibaja','C�rdenas',9,'86274148','D'),
('119700769','Joshua','Valverde','Rodr�guez',9,'85550758','D'),
('119730177','Marlon','Vanhorm','Ram�rez',9,'85411044','D'); 

--12-7 B 
Insert into estudiantes(cedula,nombre,primer_apellido,segundo_apellido,especialidad,Numero_Encargado,tipoEstudiante) values

('119590093','Bayron','Castillo','Solano',5,'70618837','D'),
('208700239','Ver�nica','Chac�n','Fonseca',5,'72814818','D'),
('155834699026','Said','Ch�vez','Jarqu�n',5,'84115013','D'),
('119570611','Tiffany','Grijalba','Mart�nez',5,'84115013','D'),
('119580224','Deyber A.','Hurtado','Escorcia',5,'89157997','D'),
('305650978','Andy Jordi','Morales','L�pez',5,'83917374','D'),
('119350558','Herson','Mor�n','Espinoza',5,'83246624','D'),
('119690892','Josthyn','Ortega','Villalobos',5,'64076209','D'),
('119790067','Dereck','Rodr�guez','Gritzka',5,'60609397','D'),
('119690021','Leandro','Rojas','N��ez',5,'87256946','D'),
('119540662','Aar�n','Salas','Pereira',5,'86088870','D'),
('305620354','Daniela','Solano','Mora',5,'61561893','D'),
('119700226','Andr�s','Sol�s','Vega',5,'85144363','D'),
('119710476','Ronald','Ulate','Montero',5,'64815958','D'),
('119650250','Tatiana','Vega','Ch�ves',5,'72044620','D'),
('305660535','Dixon','Z��iga','Mora',5,'72040877','D'); 