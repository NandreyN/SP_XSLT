package sample;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import model.ClientCollectionParser;

public class Controller {
    @FXML
    private Button txtButton, htmlButton;

    @FXML
    private void initialize() {
        htmlButton.setOnAction(e->{
            BasicXsl.xsl("input.xml","parsed.html","toHTML.xsl");
        });

        txtButton.setOnAction(e->{
            BasicXsl.xsl("input.xml","parsed.txt","toTXT.xsl");
        });

    }
}
