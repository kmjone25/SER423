package kmjone25.bsse.asu.edu.placedescriptiondroid;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import org.w3c.dom.Text;

public class MainActivity extends AppCompatActivity {

    PlaceDescription myPlace = new PlaceDescription();


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void buttonClicked(View v){
        TextView a = (TextView) findViewById(R.id.editName);
        myPlace.name = a.getText().toString();
        TextView b = (TextView) findViewById(R.id.editDscrpt);
        myPlace.dscrpt = b.getText().toString();
        TextView c = (TextView) findViewById(R.id.editCat);
        myPlace.cat = c.getText().toString();
        TextView d = (TextView) findViewById(R.id.editAddressT);
        myPlace.addTtl = d.getText().toString();
        TextView e = (TextView) findViewById(R.id.editAddressD);
        myPlace.addDscrpt = e.getText().toString();
        TextView f = (TextView) findViewById(R.id.editElev);
        myPlace.elev = Double.parseDouble(f.getText().toString());
        TextView g = (TextView) findViewById(R.id.editLat);
        myPlace.lat = Double.parseDouble(g.getText().toString());
        TextView h = (TextView) findViewById(R.id.editLong);
        myPlace.longi = Double.parseDouble(h.getText().toString());

        TextView t = (TextView) findViewById(R.id.Output);
        t.setText(myPlace.toJsonString());
    }

}
