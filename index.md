# Introduction
The website aims to visualise the ATM review analysis using deep learning-based text classification. You can easily follow the below instruction, and analyse the predicted feedback. 
If there is any question, please contact the hit lab. 



### Step1: Load your Dataset
Please upload the dataset (the file format: csv)

{% include load.html %}


* * *


### Step2: Prediction Visualisation
##### NOTE: You can also download the raw csv file (<a href="https://github.com/hit-lab/boa_atm/master/_data/example.csv">Output Download</a>)
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.3.1.js"></script>
 <script>
    $( document ).ready(function() {
        console.log( "document loaded" );
    });
 
    $( window ).on( "load", function() {
        console.log( "window loaded" );
    });
    </script>

<style>
body {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

table {
  font-size:12px;
}

td, th {
  border: 1px solid #ddd;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2;}

tr:hover {background-color: #ddd;}

th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
div.container {
        width: 80%;
    }
</style>

<table id="example" class="display" width="100%">
  <thead>
    <tr>
      <th class="th-sm">Text</th>
      <th class="th-sm">Actual Label</th>
      <th class="th-sm">Predicted</th>
    </tr>
  </thead>
  <tbody>
  {% for example in site.data.example %}
    <tr>
      <td>{{example.Text}}</td>
      <td>{{example.label}}</td>
      <td>{{example.predicted}}</td>
    </tr>
    {% endfor %}
  </tbody>
</table>
