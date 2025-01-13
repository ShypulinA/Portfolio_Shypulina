--SELECT bez warunków--
--test
--1.1. Wyświetl wszystkie kolumny i wszystkie wiersze tabeli Customers.CustomersSeld
SELECT * FROM Customers
/*1.2. Wyświetl wszystkie dane zawarte w tabeli Products.*/
SELECT * FROM Products
--1.3. Wyświetl wszystkie dane zawarte w tabeli Employees.
SELECT * FROM Employees
--1.4. Wyświetl wszystkie dane zawarte w tabeli Orders.
SELECT * FROM Orders
--1.5. Wyświetl wybrane kolumny (np. tylko nazwa firmy i miasto) oraz wszystkie wiersze tabeli Customers.
SELECT CompanyName, City FROM Customers
--1.6. Wyświetl następujące dane z tabeli Products: numery ID produktów, ich nazwy, ceny jednostkowe oraz
--ilość w magazynie.
SELECT ProductId, ProductName, UnitPrice, UnitsInStock FROM Products
--1.7. Wyświetl następujące dane z tabeli Suppliers - nazwy firm, ich kraj oraz miasto.
SELECT CompanyName, Country, City FROM Suppliers
--1.8. Wyświetl imiona, nazwiska oraz stanowiska pracowników.
SELECT FirstName, LastName, Title FROM Employees
--2. ALIAS
--2.1. Wyświetl następujące dane z tabeli Suppliers: Company Name, City, Country i zmień nazwy kolumn na
język polski.
SELECT CompanyName AS [Nazwa firmy], City AS Miasto, Country AS Kraj FROM Suppliers
/*2.2. Wyświetl następujące dane wszystkich produktów: nazwa produktu, ilość na jednostkę i cena
jednostkowa. Zmień nazwy kolumn na język polski.*/
SELECT ProductName AS [Nazwa produktu], QuantityPerUnit AS [ilość na jedn.],
UnitPrice AS [cena] FROM Products
/*2.3. Wyświetl następujące dane wszystkich zamówień: Datę zamówienia, numer ID klienta, który złożył
zamówienie, numer ID pracownika, który zrealizował to zamówienie. Zmień nazwy kolumny na język
polski.*/
SELECT OrderDate AS [Data zamówienia], CustomerID AS [Numer klienta],
EmployeeID AS [Numer pracownika] FROM Orders
/*2.4. Wyświetl imię, nazwisko, datę zatrudnienia oraz kraj dla wszystkich rekordów z tabeli Employees.
Zmień nazwy kolumn na język polski.*/
SELECT FirstName AS [Imię], LastName AS [Nazwisko],
HireDate AS [Data zatrudnienia], Country AS [Kraj] FROM Employees
/*2.5. Wyświetl wszystkich spedytorów (Shippers) ale ogranicz liczbę kolumn do: Nazwy firmy i Telefonu.
Nadaj tym kolumnom polskie nazwy a tabeli Shippers nadaj alias S.*/
SELECT CompanyName AS [Nazwa firmy], Phone AS [Telefon]
FROM Shippers AS S

/*3. ORDER BY
3.1. Wyświetl wszystkie kolumny i wszystkie wiersze z tabeli Customers. Wyniki posortuj malejąco po nazwie
firmy.*/
SELECT * FROM Customers ORDER BY CompanyName DESC
/*3.2. Wyświetl wszystkie kolumny i wszystkie wiersze z tabeli Customers. Wyniki posortuj rosnąco po nazwie
firmy.*/
SELECT * FROM Customers ORDER BY CompanyName
SELECT * FROM Customers ORDER BY CompanyName ASC
/*3.3. Wyświetl wszystkie produkty ale ogranicz liczbę kolumn do: Nazwy produktu i ceny jednostkowej. Nadaj
kolumnom nazwy polskie i posortuj wyniki rosnąco po cenie jednostkowej.*/
SELECT ProductName AS [Nazwa Produktu], UnitPrice AS [Cena] FROM Products
ORDER BY Cena
SELECT ProductName AS [Nazwa Produktu], UnitPrice AS [Cena] FROM Products
ORDER BY UnitPrice
/*3.4. Wyświetl wszystkie produkty ale ogranicz liczbę kolumn do: Nazwy produktu i ceny jednostkowej. Nadaj
kolumnom nazwy polskie i posortuj wyniki malejąco po nazwie produktu.*/
SELECT ProductName AS [Nazwa Produktu], UnitPrice AS [Cena] FROM Products
ORDER BY [Nazwa Produktu] DESC
SELECT ProductName AS [Nazwa Produktu], UnitPrice AS [Cena] FROM Products
ORDER BY ProductName DESC
/*3.5. Wyświetl wszystkie produkty ale ogranicz liczbę kolumn do: Nazwy produktu i ceny jednostkowej. Posortuj
wyniki rosnąco po cenie jednostkowej produktu a następnie malejąco po nazwie.*/
SELECT ProductName AS [Nazwa Produktu], UnitPrice AS [Cena] FROM Products
ORDER BY UnitPrice, ProductName DESC
SELECT ProductName AS [Nazwa Produktu], UnitPrice AS [Cena] FROM Products
ORDER BY UnitPrice ASC, ProductName DESC
/*3.6. Wyświetl wszystkich klientów ale ogranicz liczbę kolumn do: CompanyName, ContactName, ContactTitle,
City, Country. Posortuj wyniki malejąco po kraju a następnie po mieście rosnąco.*/
SELECT CompanyName, ContactName, ContactTitle, City, Country FROM Customers
ORDER BY Country DESC, City
SELECT CompanyName, ContactName, ContactTitle, City, Country FROM Customers
ORDER BY Country DESC, City ASC

/*4. SELECT z pojedynczym warunkiem
4.1. Wyświetl wszystkich pracowników w formacie: Nazwisko, Imię, Stanowisko, Kraj. Ogranicz wyniki do
pracowników ze Stanów Zjednoczonych.*/
SELECT LastName, FirstName, Title, Country FROM Employees WHERE Country = 'USA'
/*4.2. Wyświetl wszystkich klientów w formacie: Nazwa firmy, Miasto, Kraj. Ogranicz wyniki do klientów z
Londynu.*/
SELECT CompanyName, City, Country FROM Customers WHERE City = 'London'
/*4.3. Wyświetl dane Klientów, dla których kontakt jest ich właścicielem. Posortuj wyniki po kraju malejąco.*/
SELECT * FROM Customers WHERE ContactTitle = 'Owner'
/*4.4. Wyświetl wszystkich klientów w formacie: CompanyName, City, Country. Zmień nazwy kolumn na polskie.
Ogranicz wyniki do klientów z Niemiec. Posortuj po mieście rosnąco.*/
SELECT CompanyName AS [Nazwa firmy], City AS [Miasto], Country AS [Kraj]
FROM Customers WHERE Country = 'Germany' ORDER BY City
/*4.5. Wyświetl następujące dane pracownika o imieniu Robert: Nazwisko, Imię, Stanowisko, Data urodzenia,
Data zatrudnienia, Kraj. Zmień nazwy kolumn na polskie.*/
SELECT LastName, FirstName, BirthDate, HireDate, Country
FROM Employees WHERE FirstName = 'Robert'
/*4.6. Wyświetl dane pracownika o ID 9.*/
SELECT * FROM Employees WHERE EmployeeID=9
/*4.7. Wyszukaj wszystkie zamówienia zrealizowane przez pracownika o numerze ID 9.*/
SELECT * FROM Orders WHERE EmployeeID=9
/*4.8. Wyszukaj następujące dane produktu o nazwie Tofu: Nazwa Profuktu, cena jednostkowa, ilość w
magazynie. Zmień nazwy kolumn na polskie.*/
SELECT ProductName AS [Nazwa produktu], UnitPrice AS [Cena jedn.],
UnitsInStock AS [Ilość w magazynie] FROM Products WHERE ProductName = 'Tofu'
/*4.9. Wyświetl następujące dane wycofanych produktów: ProductID, ProductName, UnitPrice. Posortuj wyniki
po nazwie produktu rosnąco.*/
SELECT ProductID, ProductName, UnitPrice FROM Products
WHERE Discontinued=1 ORDER BY ProductName
/*4.10.Wyświetl wszystkie produkty z kategorii 6. Posortuj wyniki po cenie jednostkowej produktów od
najdroższego do najtańszego.*/
SELECT * FROM Products WHERE CategoryID=6 ORDER BY UnitPrice DESC

5. DISTINCT – eliminacja duplikatów
/*5.1. Wyświetl jakie stanowiska są wśród pracowników.*/
SELECT DISTINCT Title FROM Employees
/*5.2. Wyświetl jakie stanowiska są wśród pracowników ze Stanów Zjednoczonych.*/
SELECT DISTINCT Title FROM Employees WHERE Country='USA'
/*5.3. Wyświetl jakie stanowiska są wśród pracowników w poszczególnych krajach.*/
SELECT DISTINCT Title, Country FROM Employees ORDER BY Country
/*5.4. Wyświetl kraje, z których pochodzą zamówienia.*/
SELECT DISTINCT ShipCountry FROM Orders
/*5.5. Wyświetl z jakich miast brazylijskich są zamówienia.*/
SELECT DISTINCT ShipCity FROM Orders WHERE ShipCountry='Brazil'
/*5.6. Wyświetl miasta z poszczególnych krajów, z których są zamówienia. Posortuj po kraju i mieście rosnąco.*/
SELECT DISTINCT ShipCountry, ShipCity FROM Orders ORDER BY ShipCountry, ShipCity
/*6. !=, <>
6.1. Wyświetl tylko klientów z Polski.*/
SELECT * FROM Customers WHERE Country='Poland'
/*6.2. Wyświetl zamówienia spoza Stanów Zjednoczonych. Posortuj wyniki po kraju malejąco.*/
SELECT * FROM Orders WHERE ShipCountry!='USA' ORDER BY ShipCountry DESC
/*6.3. Wyświetl klientów spoza Londynu. Posortuj wyniki po mieście rosnąco.*/
SELECT * FROM Customers WHERE City!='London' ORDER BY City
/*6.4. Wyświetl wszystkie produkty oprócz tych należących do kategorii nr 3. Posortuj po kategorii rosnąco.*/
SELECT * FROM Products WHERE CategoryID!=3 ORDER BY CategoryID

/*7. >, <, >=, <=
7.1. Wyświetl Produkty, których cena jednostkowa jest większa od 40. Posortuj po cenie rosnąco.*/
SELECT * FROM Products WHERE UnitPrice > 40 ORDER BY UnitPrice
/*7.2. Wyświetl Produkty, których cena jednostkowa jest większa lub równa 40. Posortuj po cenie rosnąco.*/
SELECT * FROM Products WHERE UnitPrice >= 40 ORDER BY UnitPrice
/*7.3. Wyświetl Produkty, których cena jednostkowa jest mniejsza od 10. Posortuj po cenie malejąco.*/
SELECT * FROM Products WHERE UnitPrice < 10 ORDER BY UnitPrice DESC
/*7.4. Wyświetl Produkty, których cena jednostkowa jest mniejsza lub równa 10. Posortuj po cenie malejąco.*/
SELECT * FROM Products WHERE UnitPrice <= 10 ORDER BY UnitPrice DESC
/*7.5. Wyświetl zamówienia ze Stanów zjednoczonych i krajów o nazwie ‘większej’. Posortuj po kraju rosnąco.*/
SELECT * FROM Orders WHERE ShipCountry >= 'USA' ORDER BY ShipCountry
/*7.6. Wyświetl produkty, których cena jednostkowa jest z zakresu 15 i 20. Posortuj po cenie malejąco.*/
SELECT * FROM Products WHERE UnitPrice >= 15 AND UnitPrice <=20
ORDER BY UnitPrice DESC
SELECT * FROM Products WHERE UnitPrice BETWEEN 15 AND 20 ORDER BY UnitPrice DESC

/*8. IN / NOT IN
8.1. Wyświetl wszystkie produkty, których cena to 10, 15 lub 20. Posortuj po cenie rosnąco.*/
SELECT * FROM Products WHERE UnitPrice IN (10,15,20) ORDER BY UnitPrice
/*8.2. Wyświetl wszystkie produkty, których cena jest inna niż 10, 15 lub 20.*/
SELECT * FROM Products WHERE UnitPrice NOT IN (10,15,20) ORDER BY UnitPrice
/*8.3. Wyświetl zamówienia pochodzące z Francji i Polski. Posortuj po kraju malejąco.*/
SELECT * FROM Orders WHERE ShipCountry IN ('France', 'Poland')
ORDER BY ShipCountry DESC
/*8.4. Wyświetl wszystkich klientów z Polski, Hiszpanii i Stanów Zjednoczonych.*/
SELECT * FROM Orders WHERE ShipCountry IN ('Poland','Spain','USA')
/*8.5. Wyświetl wszystkich klientów spoza Polski, Hiszpanii i Stanów Zjednoczonych.*/
SELECT * FROM Orders WHERE ShipCountry NOT IN ('Poland','Spain','USA')
/*8.6. Wyświetl produkty nienależące do kategorii 1, 2, 3 i 8.*/
SELECT * FROM Products WHERE CategoryID NOT IN (1,2,3,8)
/*9. IS NULL / IS NOT NULL
9.1. Wyświetl zamówienia, które nie posiadają danych w kolumnie Region.*/
SELECT * FROM Orders WHERE ShipRegion IS NULL
/*9.2. Wyświetl zamówienia, które posiadają dane w kolumnie Region.*/
SELECT * FROM Orders WHERE ShipRegion IS NOT NULL
/*9.3. Wyświetl pracowników, którzy nie posiadają przełożonego (kolumna ReportsTo)*/
SELECT * FROM Employees WHERE ReportsTo IS NULL
/*9.4. Wyświetl zamówienia, które nie zostały jeszcze wysłane (nie posiadają daty wysyłki).*/
SELECT * FROM Orders WHERE ShippedDate IS NULL
/*9.5. Wyświetl tylko te zamówienia, które zostaly wysłane.*/
SELECT * FROM Orders WHERE ShippedDate IS NOT NULL
/*9.6. Wyświetl w jednej kolumnie miasto i kod pocztowy dostawców (Suppliers), którzy posiadają numer FAXu.*/
SELECT (City+' '+PostalCode) AS [Dane adresowe] FROM Suppliers WHERE Fax IS NULL
/*10. LIKE
10.1.Wyświetl nazwę firmy i osobę kontaktową dla klientów z Niemiec. Posortuj po nazwie firmy malejąco.*/
SELECT CompanyName, ContactName FROM Customers
WHERE Country LIKE 'Germany' ORDER BY CompanyName DESC
SELECT CompanyName, ContactName FROM Customers
WHERE Country='Germany' ORDER BY CompanyName DESC
/*10.2.Wyświetl pracowników, których stanowisko zaczyna się od słowa Sales. Posortuj po stanowisku rosnąco.*/
SELECT * FROM Employees WHERE Title LIKE 'SALES%' ORDER BY Title
/*10.3.Wyświetl pracowników, których stanowisko zawiera słowo Sales. Posortuj po stanowisku rosnąco.*/
SELECT * FROM Employees WHERE Title LIKE '%SALES%' ORDER BY Title

/*10.4.Wyświetl wszystkich pracowników, których nazwisko zaczyna się na literę D.*/
SELECT * FROM Employees WHERE LastName LIKE 'D%'
/*10.5.Wyświetl pracowników, dla których zwrot grzecznościowy kończy się na „r.”.*/
SELECT * FROM Employees WHERE TitleOfCourtesy LIKE '%r.'
/*10.6.Wyświetl osoby kontaktowe klientów (ContactName, tabela Customers), którzy mają dowolne nazwisko
ale ich imię zaczyna się na A i ma 3 litery.*/
SELECT ContactName FROM Customers
WHERE ContactName LIKE 'A__ %' --wykorzystane dwa podkreślniki
/*10.7.Wyświetl produkty, których nazwa jest 4-literowa.*/
SELECT * FROM Products
WHERE ProductName LIKE '____' --wykorzystane cztery podkreślniki
/*10.8.Wyświetl produkty, których ostatni wyraz nazwy ma 3 litery.*/
SELECT * FROM Products
WHERE ProductName LIKE '% ___' --wykorzystane trzy podkreślniki
/*11. SELECT z operatorem logicznym (AND, OR)
11.1.Wyświetl produkty, należące do kategorii 1 i których cena jest większa od 15.*/
SELECT * FROM Products WHERE CategoryID=1 AND UnitPrice>15
/*11.2.Wyświetl klientów z Polski lub z Hiszpanii.*/
SELECT * FROM Customers WHERE Country='Poland' OR Country='Spain'
SELECT * FROM Customers WHERE Country IN ('Poland','Spain')
/*11.3.Wyświetl zamówienia z UK ale nie z Londynu.*/
SELECT * FROM Orders WHERE ShipCountry='UK' AND ShipCity!='London'
/*11.4.Wyświetl produkty, które zostały wycofane (kolumna Discontinued =1) i ich cena jest mniejsza od 20.*/
SELECT * FROM Products WHERE Discontinued=1 AND UnitPrice<20
/*11.5.Wyświetl produkty, których nie ma już w magazynie oraz te, których ilość w magazynie przekracza
100sztuk.*/
SELECT * FROM Products WHERE UnitsInStock=0 OR UnitsInStock>100
/*11.6.Wyświetl wszystkich pracowników w formacie: Nazwisko, Imię, Kraj. Nazwij tak nagłówki kolumn.
Ogranicz wyniki do pracowników ze Stanów Zjednoczonych, których imiona kończą się na literę ‘t’.*/
SELECT LastName AS [Nazwisko], FirstName AS [Imię], Country AS [Kraj]
FROM Employees WHERE Country='USA' AND FirstName LIKE '%t'
/*11.7.Wyświetl wszystkich pracowników w formacie: Nazwisko, Imię, Kraj. Nazwij tak nagłówki kolumn.
Ogranicz wyniki do pracowników ze Stanów Zjednoczonych oraz tych, których imiona zawierają ‘re’.*/
SELECT LastName AS [Nazwisko], FirstName AS [Imię], Country AS [Kraj]
FROM Employees WHERE Country='USA' AND FirstName LIKE '%re%'
/*11.8.Wyświetl produkty, których cena jednostkowa jest z zakresu 50-100 – utwórz dwa zapytania: jedno z
użyciem operatorów logicznych, drugie z użyciem BETWEEN.*/
SELECT * FROM Products WHERE UnitPrice>=15 AND UnitPrice<=100
SELECT * FROM Products WHERE UnitPrice BETWEEN 15 AND 100
/*11.9.Wyświetl klientów z Francji, których osoba kontaktowa ma stanowisko zawierające słowo Manager.*/
SELECT * FROM Customers WHERE Country='France' AND ContactTitle LIKE '%Manager%'

/*11.10. Wyświetl produkty z kategorii 1 oraz 2.*/
SELECT * FROM Products WHERE CategoryID=1 OR CategoryID=2
SELECT * FROM Products WHERE CategoryID IN (1,2)
/*11.11. Wyświetl produkty z kategorii 1, których cena jest większa od 15 ale mniejsza od 20.*/
SELECT * FROM Products WHERE CategoryID=1 AND UnitPrice>15 AND UnitPrice<20
/*11.12. Wyświetl produkty z kategorii 1, których cena jest mniejsza od 15 lub większa od 20.*/
SELECT * FROM Products WHERE CategoryID=1 AND (UnitPrice<15 OR UnitPrice>20)
/*11.13. Wyświetl nazwę i cenę produktów, których cena jest z zakresu od 0 do 10 lub które nazywają się ‘Tofu’.*/
SELECT ProductName, UnitPrice FROM Products
WHERE UnitPrice BETWEEN 0 AND 10 OR ProductName='Tofu'
/*11.14. Wyświetl imię i nazwisko pracowników o inicjałach ‘AF’.*/
SELECT FirstName, LastName FROM Employees
WHERE FirstName LIKE 'A%' AND LastName LIKE 'F%'
/*11.15. Wyświetl klientów pochodzących z Protugalii lub Hiszpanii, których osoba kontaktowa ma stanowisko
sprzedażowe (w nazwie stanowiska zawarte jest słowo Sales).*/
SELECT * FROM Customers
WHERE Country IN ('Portugal', 'Spain') AND ContactTitle LIKE '%Sales%'
SELECT * FROM Customers
WHERE (Country ='Portugal' OR Country='Spain') AND ContactTitle LIKE '%Sales%'
/*11.16. Wyświetl klientów pochodzących z Niemiec lub z UK, dla których Fax nie posiada danych*/
SELECT * FROM Customers
WHERE Country IN ('Germany','UK') AND Fax IS NULL
SELECT * FROM Customers
WHERE (Country='Germany' OR Country='UK') AND Fax IS NULL
/*11.17. Wyświetl nazwy produktów, ich cenę, liczbę w magazynie oraz zamówioną liczbę, dla których nie ma
wystarczających ilości aby pokryć zamówienie a koszt sztuki wynosi co najmniej 19.00.*/
SELECT ProductName, UnitPrice, UnitsInStock, UnitsOnOrder FROM Products
WHERE (UnitsInStock-UnitsOnOrder)<0 AND UnitPrice>=19
SELECT ProductName, UnitPrice, UnitsInStock, UnitsOnOrder FROM Products
WHERE UnitsInStock < UnitsOnOrder AND UnitPrice>=19

/*12. DEKLAROWANIE ZMIENNEJ
12.1.Ustaw parametr równy 20, nazwij go ‘cena’. Następnie wyświetl produkty droższe od 20 używając
zadeklarowanego parametru.*/
DECLARE @cena INT
SET @cena=20
SELECT * FROM Products WHERE UnitPrice>@cena
/*12.2.Ustaw parametr na datę równą 01.03.1994, nazwij go ‘data’. Następnie wyświetl pracowników
zatrudnionych później niż 01.03.1993 używając zadeklarowanego parametru.*/
DECLARE @data DATE
SET @data='1994-03-01'
SELECT * FROM Employees WHERE HireDate>@data
/*12.3.Ustaw parametr na datę równą 01.08.1996, nazwij go ‘data’. Następnie wyświetl zamówienia, które
zostały złożone przed tą datą ale zostały wysłane po tej dacie. Użyj zadeklarowanego parametru.*/
DECLARE @data DATE
SET @data='1996-08-01'
SELECT * FROM Orders WHERE OrderDate<@data AND ShippedDate>@data

/*13. OPERATORY MATEMATYCZNE:
13.1.Wyświetl nazwę produktu, jego aktualną cenę jednostkową oraz cenę jaką miałby ten produkt po
zwiększeniu jej o 5. Dodatkową kolumnę ze zwiększoną ceną nazwij ‘Gdy podrożeje’.*/
SELECT ProductName, UnitPrice, UnitPrice+5 AS [Gdy podrożeje] FROM Products
/*13.2.Wyświetl nazwę produktu, jego aktualną cenę jednostkową oraz cenę jaką miałby ten produkt po
zmniejszeniu jej o 2. Dodatkową kolumnę ze zmniejszoną ceną nazwij ‘Spadek ceny’.*/
SELECT ProductName, UnitPrice, UnitPrice-2 AS [Spadek ceny] FROM Products
/*13.3.Wyświetl nazwę produktu, jego aktualną cenę, stan na magazynie oraz kwotę jaką można uzyskać
sprzedając całą ilość danego produktu. Dodatkową kolumnę z kwotą jaką można uzyskać ze sprzedaży
danego produkty nazwij ‘Możliwy zysk’.*/
SELECT ProductName, UnitPrice, UnitsInStock,
UnitPrice*UnitsInStock AS [Możliwy zysk] FROM Products
/*13.4.Wyświetl nazwę produktu, jego aktualną cenę oraz cenę po rabacie 15%. Dodatkową kolumnę z kwotą
rabatową nazwij ‘Promocja’.*/
SELECT ProductName, UnitPrice, UnitPrice*0.85 AS [Promocja] FROM Products
/*13.5.Wyświetl nazwę produktu, jego aktualną cenę oraz cenę wyprzedażową mniejszą o połowę. Dodatkową
kolumnę z kwotą wyprzedażową nazwij ‘Wyprzedaż’.*/
SELECT ProductName, UnitPrice, UnitPrice/2 AS [Wyprzedaż] FROM Products
/*13.6.Wyświetl zwrot grzecznościowy i nazwisko pracowników oraz połączenie tych danych jako trzecia
kolumna ‘Pracownik’.*/
SELECT TitleOfCourtesy, LastName, (TitleOfCourtesy+' '+LastName) AS Pracownik
FROM Employees
/*13.7.Wyświetl imię i nazwisko pracowników oraz trzecią kolumną z wyświetlonym imieniem oraz nazwiskiem.
Kolumnę tą nazwij ‘Imię i Nazwisko’.*/
SELECT FirstName, LastName, (FirstName+' '+LastName) AS [Imię i nazwisko] FROM
Employees

/*14. COUNT
14.1.Wyświetl liczbę klientów z Niemiec.*/
SELECT COUNT(*) FROM Customers WHERE Country='Germany'
/*14.2.Wyświetl ile jest wszystkich zamówień*/
SELECT COUNT(*) FROM Orders
/*14.3.Wyświetl ile zamówień obsłużył pracownik o ID 5*/
SELECT COUNT(*) FROM Orders WHERE EmployeeID=5
/*14.4.Wyświetl ile jest wszystkich produktów*/
SELECT COUNT(*) FROM Products
/*14.5.Wyświetl ile produktów zostało wycofanych (kolumna Discontinued =1)*/
SELECT COUNT(*) FROM Products WHERE Discontinued=1
/*14.6.Wyświetl ile zamówień obsłużył każdy z pracowniów (wyświetl liczbę tych zamówień oraz numer ID
pracownika -> wymuszenie użycia GROUP BY na kolumnie bez funkcji agregującej.*/
SELECT COUNT(*), EmployeeID FROM Orders
GROUP BY EmployeeID
/*14.7.Wyświetl ile produktów jest z poszczególnej kategorii.*/
SELECT COUNT(*), CategoryID FROM Products GROUP BY CategoryID
/*14.8.Wyświetl ile jest produktów o cenie z zakresu 10 – 15.*/
SELECT COUNT(*) FROM Products WHERE UnitPrice BETWEEN 10 AND 15
/*15. MIN / MAX
15.1.Wyświetl cenę najtańszego produktu.*/
SELECT MIN(UnitPrice) FROM Products
/*15.2.Wyświetl cenę najdroższego produktu.*/
SELECT MAX(UnitPrice) FROM Products
/*15.3.Wyświetl cenę najdroższego produktu z pośród produktów wycofanych.*/
SELECT MAX(UnitPrice) FROM Products WHERE Discontinued=1
/*15.4.Wyświetl najniższą cenę z pośród produktów z kategorii 3.*/
SELECT MIN(UnitPrice) FROM Products WHERE CategoryID=3
/*15.5.Wyświetl najniższą cenę produktu w poszczególnych kategoriach (wymuszenie GROUP BY na kolumnie
bez funkcji agregującej)*/
SELECT MIN(UnitPrice), CategoryID FROM Products GROUP BY CategoryID
/*15.6.Wyświetl najniższą i najwyższą cenę w kategorii 2*/
SELECT MIN(UnitPrice)AS [MIN], MAX(UnitPrice) AS [MAX]
FROM Products WHERE CategoryID=2
/*15.7.Wyświetl najniższą i najwyższą cenę produktów w poszczególnych kategoriach.*/
SELECT MIN(UnitPrice)AS [MIN], MAX(UnitPrice) AS [MAX], CategoryID
FROM Products GROUP BY CategoryID
/*15.8.Wyświetl nazwę firmy klienta, znajdującą się najbliżej początku alfabetu.*/
SELECT MIN(CompanyName) FROM Customers

/*16. SUM
16.1.Wyświetl sumę cen jednostkowych wszystkich produktów.*/
SELECT SUM(UnitPrice) FROM Products
/*16.2.Wyświetl sumę cen produktów z kategorii 3*/
SELECT SUM(UnitPrice) FROM Products WHERE CategoryID=3
/*16.3.Wyświetl kategorię i sumę cen jednostkowych produktów dla każdej z nich*/
SELECT CategoryID, SUM(UnitPrice) FROM Products GROUP BY CategoryID

/*17. AVG
17.1.Wyświetl średnią cenę jednostkową wszystkich produktów.*/
SELECT AVG(UnitPrice) FROM Products
/*17.2.Wyświetl średnią cenę produktów z kategorii 1 i 2 (bez rozdzielenia na te kategorie).*/
SELECT AVG(UnitPrice) FROM Products WHERE CategoryID IN (1,2)
/*17.3.Wyświetl kategorię i średnią cenę produktów dla każdej z nich.*/
SELECT AVG(UnitPrice), CategoryID FROM Products GROUP BY CategoryID
/*17.4.Wyświetl średnią cenę produktów z kategorii 1 i 2 (z rozdzieleniem na te kategorie).*/
SELECT AVG(UnitPrice), CategoryID FROM Products
WHERE CategoryID IN (1,2) GROUP BY CategoryID

/*18. ROUND
18.1.Wyświetl nazwę produktu, jego cenę jednostkową oraz cenę jednostkową zaokrągloną do 1 miejsca po
przecinku.*/
SELECT ProductName, UnitPrice, ROUND(UnitPrice,1) FROM Products
SELECT ProductName, UnitPrice, CONVERT(numeric(10,1),(ROUND(UnitPrice,1)))
FROM Products
1/*8.2.Wyświetl nazwę produktu, jego cenę jednostkową oraz cenę jednostkową zaokrągloną do całości*/
SELECT ProductName, UnitPrice, ROUND(UnitPrice,0) FROM Products
/*18.3.Wyświetl średnią cenę produktów z kategorii 1. Następnie zaokrąglij tą cenę do jednego miejsca po
przecinku.*/
SELECT ROUND(AVG(UnitPrice),1) FROM Products WHERE CategoryID=1

/*19. GROUP BY / HAVING
19.1.Wyświetl ilość zamówień złożonych przez poszczególnych klientów. Posortuj wyniki od najmniejszej do
największej liczby zamówień. Zawęź wyniki do klientów dla których ilość zamówień jest większa lub
równa 20.*/
SELECT COUNT(*) AS [Ile], CustomerID FROM Orders GROUP BY CustomerID
HAVING COUNT(*)>=20 ORDER BY Ile
/*19.2.Wyświetl ile różnych produktów dostarcza każdy z dostawców oraz ID dostawcy. Posortuj malejąco po
ilości produktów.*/
SELECT COUNT(*) AS [Ile], SupplierID FROM Products GROUP BY SupplierID
ORDER BY Ile DESC
/*19.3.Wyświetl EmployeeID oraz zliczoną ilość zamówień, które obsłużył dany pracownik ale tylko dla
Pracowników, których ilość zamówień przekracza 100.*/
SELECT EmployeeID, COUNT(*) FROM Orders GROUP BY EmployeeID HAVING COUNT(*)>100
/*19.4.Wyświetl ID kategorii, średnią cenę produktów tylko, gdy ilość produktów w danej kategorii > 10.*/
SELECT CategoryID, AVG(UnitPrice) FROM Products GROUP BY CategoryID
HAVING COUNT(ProductName)>10
/*19.5.Wyświetl średnią cenę dostawy (Freight) zamówień wg. poszczególnych klientów.*/
SELECT CustomerId, AVG(Freight) FROM Orders GROUP BY CustomerID
/*19.6.Wyświetl długość najdłuższej nazwy klienta zamieszkałego w danym kraju.*/
SELECT MAX(LEN(CompanyName)), Country FROM Customers GROUP BY Country

/*20. SELECT TOP
20.1.Wyświetl tylko 20 pierwszych rekordów z tabli Orders.*/
SELECT TOP 20 * FROM Orders
/*20.2.Wyświetl Produkty o cenie jednostkowej większej od 10. Posortuj je po nazwie produktu malejąco i
ogranicz wyniki do pierwszych 10.*/
SELECT TOP 10 * FROM Products WHERE UnitPrice > 10 ORDER BY ProductName DESC
/*20.3.Wyświetl 3 pracowników, którzy mają najdłuższy staż.*/
SELECT TOP 3 * FROM Employees ORDER BY HireDate
/*21. SUBSTRING – przycinanie tekstu
21.1.Wyświetl pierwsze 3 litery imion pracowników.*/
SELECT SUBSTRING(FirstName,1,3) FROM Employees
/*21.2.Wyświetl połączenie pierwszych trzech liter imienia i pierwszych 4 liter nazwiska pracowników oraz ich
stanowiska.*/
SELECT (SUBSTRING(FirstName,1,3)+SUBSTRING(LastName,1,4)), Title FROM Employees
/*21.3.Wyświetl imię i nazwisko pracowników oraz trzecią kolumnę z tymi danymi w formie: ‘J. Kowalski’.*/
SELECT FirstName, LastName, (SUBSTRING(FirstName,1,1)+'. '+LastName)
FROM Employees
/*21.4.Wyświetl imię i nazwisko pracowników o inicjałach ‘AF’.*/
SELECT FirstName, LastName FROM Employees
WHERE SUBSTRING(FirstName,1,1)='A' AND SUBSTRING(LastName,1,1)='F'

/*22. CASE
22.1.Wyświetl nazwy produktów oraz dodatkową kolumnę z informacją czy produkt ten jest tani czy drogi.
Przyjmij, że tani to cena jednostkowa do 20 włącznie.*/
SELECT ProductName,
(CASE WHEN UnitPrice <=20
THEN 'TANI'
ELSE 'DROGI'
END) AS [tani/drogi]
FROM Products
/*22.2.Wyświetl nazwy produktów oraz dodatkową kolumnę z informacją czy jest jeszcze dostępny w
magazynie.*/
SELECT ProductName,
(CASE WHEN UnitsInStock=0
THEN 'NIE'
ELSE 'TAK'
END) AS [dostępny]
FROM PRODUCTS
2/*2.3.Wyświetl następujące dane z tabeli Customers: nazwę firmy, imię i nazwisko osoby kontaktowej oraz w
dodatkowej kolumnie dla klientów, których ContactTitle zawiera ‘Sales’ wyświetl ‘Sprzedaż’.*/
SELECT CompanyName, ContactTitle,
(CASE WHEN ContactTitle LIKE '%Sales%'
THEN 'Sprzedaż'
END) AS stanowisko
FROM Customers
/*22.4.Wyświetl imię i nazwisko pracowników (w jednej kolumnie), ich stanowisko oraz jeżeli stanowisko
zawiera słowo ‘Manager’ w dodatkowej kolumnie ‘rola’ wyświetl ‘Zarządzanie’.*/
SELECT (FirstName+' '+LastName) AS [Imię i Nazwisko], Title,
(CASE WHEN Title Like '%Manager%'
THEN 'zarządzanie'
END) AS rola
FROM Employees

/*23. PODZAPYTANIA
/*23.1.Wyświetl nazwę produktu o najwyższej cenie.*/
SELECT ProductName FROM Products
WHERE UnitPrice=(SELECT MAX(UnitPrice) FROM Products)
/*23.2.Wyświetl klientów, którzy nigdy nie złożyli zamówienia (bez użycia JOIN).*/
SELECT * FROM Customers
WHERE CustomerID NOT IN (SELECT DISTINCT CustomerId FROM Orders)
/*23.3.Wyświetl nazwy produktów, których cena jest większa od średniej ceny wszystkich produktów.*/
SELECT ProductName FROM Products
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Products)
/*23.4.Wyświetl podwładnych pracownika o nazwisku Fuller.*/
SELECT * FROM Employees
WHERE ReportsTo=(SELECT EmployeeID FROM Employees
WHERE LastName='Fuller')

/*23.5.Wyświetl produkty należące do kategorii Seafood.*/
SELECT * FROM Products
WHERE CategoryID=(SELECT CategoryID FROM Categories
WHERE CategoryName='Seafood')
/*23.6.Wyświetl nazwę kategorii, w której znajduje się produkt o nazwie Tofu.*/
SELECT CategoryName FROM Categories
WHERE CategoryID=(SELECT CategoryID FROM Products
WHERE ProductName='Tofu')
2/*3.7.Wyświetl produkty, których dostawcy są z Japonii.*/
SELECT * FROM Products
WHERE SupplierID IN (SELECT SupplierID FROM Suppliers
WHERE Country='Japan')
/*23.8.Wyświetl zamówienia obsłużone przez pracownika o imieniu Steven.*/
SELECT * FROM Orders
WHERE EmployeeID IN (SELECT EmployeeID FROM Employees
WHERE FirstName='Steven')
/*23.9. Wyświetl klientów, którzy kiedykolwiek zamówili z jakiegokolwiek miasta UK oprócz 'Cowes'.*/
SELECT * FROM Customers
WHERE CustomerID IN (SELECT CustomerID FROM Orders
WHERE ShipCountry='UK' AND ShipCity!='Cowes')
/*23.10. Wyświetl informacje o pracownikach, którzy nie mają podwładnych.*/
SELECT * FROM Employees
WHERE EmployeeID NOT IN (SELECT ReportsTo FROM Employees
WHERE ReportsTo IS NOT NULL)
/*23.11. Wyświetl dane najstarszego zamówienia.*/
SELECT * FROM Orders
WHERE OrderDate=(SELECT MIN(OrderDate) FROM Orders)
/*23.12. Wyświetl wszystkie dane zamówień, dla których kwota zamówienia była w przedziale od 3000 do 4000.*/
SELECT * FROM Orders
WHERE OrderID IN (SELECT OrderID FROM [Order Details]
GROUP BY OrderID
HAVING SUM(UnitPrice*Quantity*(1-Discount))
BETWEEN 3000 AND 4000)
/*23.13. Wyświetl nazwę produktu oraz nazwę dostawcy produktów z kategorią Id większa niż 4 (podzapytanie
w klauzuli SELECT).*/
SELECT ProductName,
(SELECT CompanyName FROM Suppliers
WHERE Products.SupplierID=Suppliers.SupplierID) AS Supplier
FROM Products WHERE CategoryID > 4

/*24. INNER JOIN / JOIN (sprawdź najpierw, jaki klucz łączy podane w zadaniu tabele!)*/
/*24.1. Połącz tabelę Region oraz Territories w jedną.
Wyniki zawęź do Terytoriów z opisem zaczynającym się na ‘B’.
Posortuj po TerritoryID rosnąco*/
SELECT * FROM Region AS r
JOIN Territories AS t
ON r.RegionID=t.RegionID
WHERE TerritoryDescription LIKE 'B%'
ORDER BY TerritoryId
/*24.2. Połącz tabelę Territories z EmployeeTerritories
Wyniki zawęź do Pracowników, Opisu Terytorium i Regionu, gdzie RegionID jest większe od 2, a w Opisie
Terytorium występuje litera ‘h’ (mała lub duża)
Posortuj po Opisie Terytorium rosnąco*/
SELECT EmployeeID, TerritoryDescription, RegionID
FROM EmployeeTerritories ET
JOIN Territories AS T
ON ET.TerritoryID=T.TerritoryID
WHERE RegionID > 2
AND (TerritoryDescription LIKE '%h%' OR TerritoryDescription LIKE '%H%')
ORDER BY TerritoryDescription
/*24.3. Połącz tabelę EmployeeTerritories z Employees
Stwórz jedną kolumnę z aliasem ‘Pracownik i Tytuł’ z kolumn Imię, Nazwisko i Tytuł (płeć).
Wyniki zawęź do Sprzedawców, przypisanych do Londynu lub miast zakończonych na ‘d’
Posortuj po Dacie urodzenia rosnąco*/
SELECT TitleOfCourtesy+' '+LastName+' '+FirstName AS PRACOWNIK
FROM EmployeeTerritories ET
JOIN Employees E ON E.EmployeeID=ET.EmployeeID
WHERE Title LIKE '%SALES%'
AND (City = 'LONDON'
OR City LIKE '%D')
ORDER BY BirthDate
/*24.4. Połącz tabelę Orders z Customers
Sformatuj Datę Zamówienia, by pokazywała miesiąc i dzień – stwórz dla niej nazwę ‘Dzień zamówienia’.
Sformatuj Nazwę firmy klienta do wielkich liter – stwórz alias ‘Klient’
Wytnij nr kierunkowy – stwórz alias ‘Kierunkowy’
Wyniki zawęź do Dostawców, gdzie nazwa zaczyna się na ‘A’ lub kończy na ‘a’.
Dodatkowo, gdzie w nazwie Klienta występuje ‘the’.
Oraz gdzie zamówienia przypisane są do Pracowników z Id od 3 do 9.
Posortuj po ‘Dzień zamówienia’ malejąco*/

SELECT FORMAT(OrderDate, 'MM-DD') AS [Dzień Zamówienia], UPPER(CompanyName) AS
'Klient', SUBSTRING(PhoneE,1,5) AS 'Kierunkowy'
FROM Orders O
JOIN Customers C ON C.CustomerID=O.CustomerID
WHERE (ShipName LIKE 'A%'
OR ShipName LIKE '%A')
AND CompanyName LIKE '%The%'
AND EmployeeID BETWEEN 3 AND 9
ORDER BY [Dzień Zamówienia] DESC
/*24.5.Wyświetl dostawców (tabela Suppliers) i ich produkty (tabela Products). Wyświetl nazwę dostawcy, adres
dostawcy, telefon i kraj dostawcy, nazwę produktu, cenę jednostkową.*/
SELECT s.CompanyName, s.Phone, s.Country, p.ProductName, p.UnitPrice
FROM Suppliers AS s
JOIN Products AS p
ON s.SupplierID=p.SupplierID
/*24.6. Połącz tabelę z produktami z tabelą z kategoriami.*/
SELECT * FROM Products AS p
JOIN Categories AS c
ON p.CategoryID = c.CategoryID
/*Ogranicz wyniki do następujących kolumn: CategoryName, ProductName, UnitPrice. Posortuj wyniki
nazwie kategorii malejąco.*/
SELECT c.CategoryName, p.ProductName, p.UnitPrice
FROM Products AS p
JOIN Categories AS c
ON p.CategoryID=c.CategoryID
ORDER BY c.CategoryName DESC
/*Ogranicz wyniki do produktów należących tylko do kategorii Seafood oraz Beverages, których cena jest
mniejsza od 10.*/
SELECT c.CategoryName, p.ProductName, p.UnitPrice
FROM Products AS p
JOIN Categories AS c
ON p.CategoryID=c.CategoryID
WHERE c.CategoryName IN ('Seafood','Beverages') AND p.UnitPrice <10
ORDER BY c.CategoryName DESC
/*24.7. Połącz tabelę dostawców z tabelą produktów*/
SELECT * FROM Products AS p
JOIN Suppliers AS s
ON p.SupplierID=s.SupplierID
/*Wyświetl tylko nazwę produktu, nazwę dostawcy oraz miasto i kraj, z którego dostawca pochodzi.*/
SELECT p.ProductName, s.CompanyName, s.City, s.Country
FROM Products AS p
JOIN Suppliers AS s
ON p.SupplierID=s.SupplierID
/*Zawęź wyniki do rekordów, których dostawca jest z Hiszpanii lub UK.*/
SELECT p.ProductName, s.CompanyName, s.City, s.Country
FROM Products AS p
JOIN Suppliers AS s
ON p.SupplierID=s.SupplierID
WHERE s.Country IN ('Spain','UK')

/*24.8. Połącz tabelę zamówień z tabelą pracowników. Posortuj po ID pracownika.
SELECT * FROM Orders AS o
JOIN Employees AS e
ON o.EmployeeID = e.EmployeeID
/*Zawęź wyniki wyszukiwania do zamówień obsłużonych przez pracownika o numerze ID 2,4 i 5.*/
SELECT * FROM Orders AS o
JOIN Employees AS e
ON o.EmployeeID = e.EmployeeID
WHERE o.EmployeeID IN (2,4,5)
/*Ogranicz wyniki do tych, których kolumna ShipName zawiera w swojej wartości ‘res’. Posortuj po
numerze ID pracownika rosnąco.*/
SELECT * FROM Orders AS o
JOIN Employees AS e
ON o.EmployeeID = e.EmployeeID
WHERE o.EmployeeID IN (2,4,5) AND o.ShipName LIKE '%res%'
ORDER BY e.EmployeeID
/*24.9. Połącz tabelę Orders z Shippers (uwaga na różne nazwy kluczy!)*/
SELECT * FROM Orders AS o
JOIN Shippers AS s
ON o.ShipVia = s.ShipperID
/*Wyniki zawęź do zamówień z Francji oraz Finlandii.*/
SELECT * FROM Orders AS o
JOIN Shippers AS s
ON o.ShipVia = s.ShipperID
WHERE o.ShipCountry IN ('France','Finland')
/*Wyniki zawęź do tych obsługiwanych przez pracownika nr 2 i posortuj po dacie zamówienia od
najnowszego do nastarszego zamówienia.*/
SELECT * FROM Orders AS o
JOIN Shippers AS s
ON o.ShipVia = s.ShipperID
WHERE o.ShipCountry IN ('France','Finland') AND o.EmployeeID=2
ORDER BY OrderDate DESC
/*24.10. Połącz Products z Suppliers.*/
SELECT * FROM Products AS p
JOIN Suppliers AS s
ON p.SupplierID = s.SupplierID
/*Wyniki ogranicz do produktów, których cena wynosi 9, 10 lub 11 lub jest z zakresu 35-40. W wynikach
wyświetl same ceny i ID kategorii.*/
SELECT p.UnitPrice, p.CategoryID FROM Products AS p
JOIN Suppliers AS s
ON p.SupplierID = s.SupplierID
WHERE p.UnitPrice IN (9,10,11) OR UnitPrice BETWEEN 35 AND 40
/*Zsumuj ceny dla poszczególnych kategorii i wyświetl tylko te, których suma > 40.*/
SELECT SUM(p.UnitPrice), p.CategoryID FROM Products AS p
JOIN Suppliers AS s
ON p.SupplierID = s.SupplierID
WHERE p.UnitPrice IN (9,10,11) OR UnitPrice BETWEEN 35 AND 40
GROUP BY p.CategoryID
HAVING SUM(p.UnitPrice) > 40

/*24.11. Połącz tabelę kategorii (Categories) z tabelą dostawców (Suppliers). Wyświetl tylko następujące
kolumny: Nazwę kategorii oraz nazwę firmy dostarczającej. Posortuj po nazwie kategorii rosnąco.*/
SELECT c.CategoryName, s.CompanyName FROM Categories AS c
JOIN Products AS p
ON c.CategoryID = p.CategoryID
JOIN Suppliers AS s
ON p.SupplierID = s.SupplierID
ORDER BY c.CategoryName
/*24.12. Wyświetl klientów, którzy nigdy nie złożyli zamówienia (używając JOIN).*/
SELECT * FROM Customers AS c
LEFT JOIN Orders AS o
ON c.CustomerId = o.CustomerId
WHERE o.CustomerId IS NULL
/*24.13. Wyświetl nazwę produktu wielkimi literami, nazwę dostawcy, nazwę kategorii dla produktów z
kategorii zaczynającą się na literę C.*/
SELECT UPPER(p.ProductName), s.CompanyName, c.CategoryName
FROM Products AS p
JOIN Suppliers AS s
ON p.SupplierID = s.SupplierID
JOIN Categories AS c
ON c.CategoryID = p.CategoryID
WHERE c.CategoryName like 'C%'
/*24.14. Wyświetl dane dostawców 3 najdroższych produktów.*/
SELECT TOP3 s.* FROM Suppliers AS s
JOIN Products AS p
ON s.SupplierID = p.SupplierID
ORDER BY UnitPrice DESC
/*24.15. Wyświetl ID i nazwę klientów, którzy złożyli zamówienie w Lipcu 1996r.*/
SELECT c.CustomerID, c.CompanyName
FROM Customers AS c
JOIN Orders AS o
ON c.CustomerID = o.CustomerID
WHERE o.OrderDate BETWEEN CONVERT(datetime, '1996-07-01')
AND CONVERT(datetime, '1996-07-31')
/*25. TRIPLE JOIN
25.1. Połącz tabele: Region z Territories i EmployeeTerritories.
Wyniki zawęź do Regionów z opisem zaczynającym się na ‘N’ LUB gdzie występują pracownicy z ID 1 i 5.
Posortuj po TerritoryID malejąco*/
SELECT * FROM DBO.REGION R
JOIN DBO.TERRITORIES T ON R.REGIONID=T.REGIONID
JOIN DBO.EMPLOYEETERRITORIES ET ON ET.TERRITORYID=T.TERRITORYID
WHERE REGIONDESCRIPTION LIKE 'N%'
OR EMPLOYEEID IN (1,5)
ORDER BY T.TERRITORYID DESC
/*25.2. Połącz tabele: Territories z EmployeeTerritories i Employees.
Wyniki zawęź do Kobiet zatrudnionych od 1993 r.
Posortuj po Nazwisku rosnąco i po Opisie Terytorium malejąco*/
SELECT * FROM DBO.EMPLOYEETERRITORIES ET
JOIN DBO.TERRITORIES T ON ET.TERRITORYID=T.TERRITORYID

JOIN DBO.EMPLOYEES E ON E.EMPLOYEEID=ET.EMPLOYEEID
WHERE (TITLEOFCOURTESY = 'MS.' OR
TITLEOFCOURTESY = 'MRS.')
AND HIREDATE > '1993-01-01'
ORDER BY LASTNAME, TERRITORYDESCRIPTION DESC
/*25.3. Połącz tabele: EmployeeTerritories z Employees i Orders.
Wyniki zawęź do Zamówień przypisanych do Szefa (kolumna ReportsTo), gdzie Kraj Dostawy jest w
Europie i Data Dostawy jest znana.
Stwórz kolumnę z aliasem ‘Wspaniały Szef’ z Tytułów (płeć i stanowisko), Imię i Nazwisko. Stanowisko
zapisz małymi literami, a nazwisko dużymi
Posortuj po Dacie Dostawy malejąco*/
SELECT TITLE + ' ' + LOWER(TITLEOFCOURTESY) + ' ' + FIRSTNAME + ' ' +
UPPER(LASTNAME) AS 'WSPANIAŁY SZEF', * FROM DBO.EMPLOYEETERRITORIES ET
JOIN DBO.EMPLOYEES E ON E.EMPLOYEEID=ET.EMPLOYEEID
JOIN DBO.ORDERS O ON O.EMPLOYEEID=E.EMPLOYEEID
WHERE REPORTSTO IS NULL
AND SHIPCOUNTRY NOT IN ('ARGENTINA', 'BRAZIL', 'MEXICO', 'USA', 'CANADA',
'VENEZUELA')
AND SHIPPEDDATE IS NOT NULL
ORDER BY ORDERDATE DESC
/*25.4. Połącz tabele: Employees z Orders i Customers
Sformatuj Datę dostarczenia, by pokazywała dzień, miesiąc i dwie cyfry roku – stwórz dla tej kolumny
alias ‘Dzień dostawy’
Wyniki zawęź do Regionów Dostawy, które są znane, a gdzie nie jest znany Fax.
Dodatkowo Miasto Klienta zawiera w nazwie ‘o’, a Region Klienta ma nazwę dwuliterową.
Posortuj po Mieście Dostawy*/
SELECT FORMAT(SHIPPEDDATE, 'DD-MM-YY') AS [DZIEŃ DOSTAWY],* FROM DBO.EMPLOYEES E
JOIN DBO.ORDERS O ON O.EMPLOYEEID=E.EMPLOYEEID
JOIN DBO.CUSTOMERS C ON C.CUSTOMERID=O.CUSTOMERID
WHERE SHIPREGION IS NOT NULL
AND FAX IS NULL
AND C.CITY LIKE '%O%'
AND C.REGION LIKE '__'
ORDER BY SHIPCITY
/*25.5. Połącz tabele: Employees z Orders i Shippers.
Wyciągnij dane dotyczące: Daty dostawy, Statku dostawy i nazwy Firmy dostawczej.
Dla każdej z tych kolumn stwórz polskie aliasy.
Wyniki zawęź do zamówień realizowanych przez Pracowników z Wielkiej Brytanii.
Dodatkowo interesują nas zamówienia do Europy, zrealizowane w 1996 r., i zrealizowane na statkach z
apostrofem w nazwie lub zrealizowane przez firmę United Package.
Wyniki posortuj po Dacie dostawy malejąco.*/
SELECT O.ShippedDate AS [Data dostawy], O.ShipName AS [Statek], S.CompanyName AS
[Firma dostawcy] from dbo.Employees E
JOIN dbo.Orders O ON O.EmployeeID=E.EmployeeID
JOIN dbo.Shippers S ON S.ShipperID=O.ShipVia
WHERE E.Country = 'UK'
AND O.ShipCountry NOT IN ('Argentina', 'Brazil', 'Canada', 'Mexico','USA',
'Venezuela')
AND O.ShippedDate BETWEEN '1996-01-01' AND '1996-12-01'
AND (O.ShipName LIKE '%''%' OR S.CompanyName = 'United Package')
ORDER BY O.ShippedDate DESC

/*26. WIDOKI (CREATE, ALTER, DROP):
26.1.Utwórz widok, który będzie zawierał następujące dane z tabeli Customers: Nazwy firm, Osobę
kontaktową, Miasto oraz Kraj. Nazwij ten widok ‘Moje_Customers’.*/
CREATE VIEW [Moje_Customers] AS
SELECT CompanyName, ContactName, City, Country FROM Customers
/*26.2.Wyszukaj w utworzonym widoku klientów z Francji.*/
SELECT * FROM [Moje_Customers] WHERE Country = 'France'
/*26.3.Nadpisz utworzony wcześniej widok dodając do niego warunek, który ograniczy klientów do tych ze
Stanów Zjednoczonych.*/
ALTER VIEW [Moje_Customers] AS
SELECT CompanyName, ContactName, City, Country FROM Customers
WHERE Country = 'USA'
/*26.4.Usuń utworzony widok.*/
DROP VIEW [Moje_Customers]
/*27. TABELE (INSERT, UPDATE)
27.1.Wstaw do tabeli z produktami produkt o nazwie Rafaello. Dane: cena 15.99, ilosc w magazynie 20 i nie
jest wycofany ze sprzedaży.*/
INSERT INTO Products (ProductName, UnitPrice, UnitsInStock, Discontinued)
VALUES ('Rafaello', 15.99, 20, 0)
/*27.2. Zmień cenę produktu Rafaello z 15.99 na 13.49 oraz dodaj mu kategorię nr 3.*/
UPDATE Products
SET UnitPrice=13.49, CategoryID=3
WHERE ProductName = 'Rafaello'
/*27.3.Usuń Produkt Rafaello.*/
DELETE FROM Products WHERE ProductName = 'Rafaello'
/*27.4.Dodaj nowy obszar w tabeli Territories.*/
INSERT INTO Territories (TerritoryID, TerritoryDescription, RegionID)
VALUES ('9999', 'Gdansk', 3)
/*27.5. Zmień miasto (TerritoryDescription) w nowo utworzonym obszarze.*/
UPDATE Territories SET TerritoryDescription = 'Krakow' WHERE TerritoryId = '9999'
/*27.6.Wykasuj stworzony obszar z tabeli.*/
DELETE Territories WHERE TerritoryID = '9999'