# SQL Practice

[🇬🇧 English](README.md) | 🇹🇷 Türkçe

Küçük bir e-ticaret veritabanı (Customers, Orders, OrderDetails, Products,
Categories) üzerine hazırlanmış 10  MS SQL alıştırma sorusu ve çözümü.

> Not: Kod dosyalarındaki (`.sql`) yorumlar İngilizcedir. Bu sayfa sadece
> soruların Türkçe açıklamalarını içerir.

## Şema

Tablo yapıları ve ilişkiler [schema.sql](solutions/schema.sql) dosyasında tanımlıdır:

- **Customers**: CustomerID (PK), FirstName, LastName, Email, Phone, Address, City
- **Orders**: OrderID (PK), OrderDate, CustomerID (FK), Description
- **OrderDetails**: OrderDetailsID (PK), OrderID (FK), ProductID (FK), Quantity
- **Products**: ProductID (PK), ProductName, CategoryID (FK), UnitPrice, Stock
- **Categories**: CategoryID (PK), CategoryName

İlişkiler: `Customers 1—N Orders`, `Orders 1—N OrderDetails`, `Products 1—N OrderDetails`, `Categories 1—N Products`.

## Sorular

| # | Soru | Çözüm |
|---|------|-------|
| 1 | Müşterinin satın aldığı ürünlerin kaç kategori olduğunu bul | [01.sql](solutions/01.sql) |
| 2 | En çok para harcayan müşterileri bul | [02.sql](solutions/02.sql) |
| 3 | Stokları bitmiş ürünlerin isimlerini ve kategorisini listele | [03.sql](solutions/03.sql) |
| 4 | Hiç satın alma yapmamış müşterilerin ad, soyad, email, telefon ve adresini listele | [04.sql](solutions/04.sql) |
| 5 | Ortalama satış miktarı 5'ten fazla olan kategorileri ve toplam satılan ürün adedini listele | [05.sql](solutions/05.sql) |
| 6 | Her müşteri ve varsa 2026 yılındaki siparişlerinin detaylarını listele (siparişi olmayanlar da NULL ile görünsün) | [06.sql](solutions/06.sql) |
| 7 | Her kategorideki en pahalı ürünü, kategorisini ve fiyatını listele | [07.sql](solutions/07.sql) |
| 8 | En çok farklı ürün çeşidi içeren siparişi bul | [08.sql](solutions/08.sql) |
| 9 | Her kategorinin 2026 yılındaki toplam gelirini, en yüksekten en düşüğe sıralı listele | [09.sql](solutions/09.sql) |
| 10 | 2'den fazla sipariş vermiş müşterileri, sipariş sayısına göre azalan sırada listele | [10.sql](solutions/10.sql) |

## Kullanılan SQL kavramları

- `INNER JOIN` / `LEFT JOIN`
- `GROUP BY` / `HAVING`
- Aggregate fonksiyonlar (`COUNT`, `SUM`, `AVG`, `MAX`)
- Correlated subquery (Soru 7)
- `TOP` ile sıralı sonuçtan ilk kaydı alma (Soru 8)
- `ORDER BY` ile sıralama

## Notlar

Bu sorgular T-SQL (SQL Server) sözdizimine göre yazılmıştır (`[]` köşeli
parantez kullanımı ve `TOP` ifadesi bunun göstergesidir). Farklı bir veritabanı
motoru (PostgreSQL, MySQL vb.) kullanacaksanız küçük sözdizimi farkları
olabilir (örneğin `TOP 1` yerine `LIMIT 1`).
