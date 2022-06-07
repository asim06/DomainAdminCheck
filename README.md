# DomainAdminCheck
Powershell script ile Domain Admin grup içeresinde şüpheli yükseltmelere karşı hazırlanmıştır.

## Örnek Adımlar
statik olarak domain admin grup üyeleri tanımlanır.(SamAccountName)
Statik tanımlı üyeler ile sürekli karşılaştırma yapılarak bunların dışında olanlar otomatik olarak silinir ve loglanır.

### Loglama

Şüpheli kullanıcı ismi, tarih şeklinde activeDirectoyLogs.txt dosyasına yazılır


![domain-admins](https://user-images.githubusercontent.com/25990177/172451654-0dc18b1d-5cad-4fe3-a20b-99ea974c07f4.png)
