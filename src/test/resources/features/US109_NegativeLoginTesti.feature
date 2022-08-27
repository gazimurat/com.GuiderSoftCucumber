@negative
Feature: US109 Negative login test

  Scenario: TC12 yanlis username doğru password ile giriş yap
    Given kullanici "HMCUrl" sayfasina gider
    Then login linkine tiklar
    Then kullanici adi olarak "HMCWrongUsername" girer
    Then password olarak "HMCValidPassword" girer
    When login butonuna basar
    And basarili olarak giris yapilamadigini test eder

    Scenario: TC13 dogru username yanlis password ile giriş yap
      Given kullanici "HMCUrl" sayfasina gider
      Then login linkine tiklar
      Then kullanici adi olarak "HMCValidUsername" girer
      Then password olarak "HMCWrongPassword" girer
      When login butonuna basar
      And basarili olarak giris yapilamadigini test eder

      Scenario: TC14 yanlis username yanlis password ile giriş yap
        Given kullanici "HMCUrl" sayfasina gider
        Then login linkine tiklar
        Then kullanici adi olarak "HMCWrongUsername" girer
        Then password olarak "HMCWrongPassword" girer
        When login butonuna basar
        And basarili olarak giris yapilamadigini test eder
        And sayfayı kapatır
