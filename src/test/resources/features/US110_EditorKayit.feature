@Editor @testparalel
Feature: US110 Scenario Outline ile Editor database sayfasina Kayit

  Scenario Outline: TC16 Kullanici yeni kayit eklemeli
    When kullanici "EDB" sayfasina gider
    Then new butonuna basar
    Then firstname olarak "<firstname>" girer
    Then lastname olarak "<lastname>" girer
    Then Position olarak "<position>" girer
    Then Office olarak "<office>" girer
    Then Extension olarak "<extension>" girer
    Then Start date olarak "<startdate>" girer
    Then Salary olarak "<salary>" girer
  And kullanıcı Create tusuna basar
  When kullanici "<firstname>" ile arama yapar
  And isim bolumunde "<firstname>" dogrular
    And sayfayı kapatır

    Examples:
      | firstname | lastname | position | office | extension | startdate | salary |
      | Alkan | Tuncer | DevOps | NC | QA | 2022-10-10 | 110000 |
      | Muhammed | Güney | Developer | Almanya | Boss | 2022-10-11 | 55500 |
      | Sadri | Fındıklı | Developer | İngiltere | QA | 2022-10-12 | 45000 |
      | Hasan| Özye | Tester | Dubai | QA | 2022-10-15 | 100000 |








