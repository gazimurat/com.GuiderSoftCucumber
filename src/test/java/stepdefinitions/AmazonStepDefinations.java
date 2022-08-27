package stepdefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.Keys;
import pages.AmazonPage;
import utilities.ConfigurationReader;
import utilities.Driver;

public class AmazonStepDefinations {
    AmazonPage amazonPage=new AmazonPage();

    @Given("kullanici {string} sayfasina gider")
    public void kullanici_sayfasina_gider(String istenenURL) {
        Driver.getDriver().get(ConfigurationReader.getProperty(istenenURL));
    }

    @Given("kullanici amazon sayfasına gider")
    public void kullanici_amazon_sayfasına_gider() {
        Driver.getDriver().get(ConfigurationReader.getProperty("AmazonURL"));
    }

    @Given("iphone icin arama yapar")
    public void iphone_icin_arama_yapar() {
        amazonPage.aramaKutusu.sendKeys("iphone"+ Keys.ENTER);
    }
    @Then("sonuclarin iphone icerdiğini test eder")
    public void sonuclarin_iphone_icerdiğini_test_eder() {
        String sonuc=amazonPage.sonucIcerigi.getText();
        Assert.assertTrue(sonuc.contains("iphone"));
    }
    @Given("teapot icin arama yapar")
    public void teapot_icin_arama_yapar() {
        amazonPage.aramaKutusu.sendKeys("teapot",Keys.ENTER);
    }
    @Then("sonuclarin tea pot icerdiğini test eder")
    public void sonuclarin_tea_pot_icerdiğini_test_eder() {
        String sonuc=amazonPage.sonucIcerigi.getText();
        Assert.assertTrue(sonuc.contains("teapot"));
    }
    @Given("flower icin arama  yapar")
    public void flower_icin_arama_yapar() {
        amazonPage.aramaKutusu.sendKeys("flower",Keys.ENTER);
    }
    @Then("sonuclarin  flower icerdigini  test eder")
    public void sonuclarin_flower_icerdigini_test_eder() {
        String sonuc=amazonPage.sonucIcerigi.getText();
        Assert.assertTrue(sonuc.contains("flower1"));
    }

    @Given("{string} icin arama yapar")
    public void icin_arama_yapar(String arananKelime) {
        amazonPage.aramaKutusu.sendKeys(arananKelime+Keys.ENTER);
    }

    @Then("sonuclarin {string} icerdiğini test eder")
    public void sonuclarin_icerdiğini_test_eder(String arananKelime) {
        String sonuc=amazonPage.sonucIcerigi.getText();
        Assert.assertTrue(sonuc.contains(arananKelime));
    }


    @And("sayfayı kapatır")
    public void sayfayıKapatır(){
        Driver.closeDriver();
    }
}
