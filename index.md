# Introduction
The website aims to visualise the ATM review analysis using deep learning-based text classification. You can easily follow the below instruction, and analyse the predicted feedback. 
If there is any question, please contact the hit lab. 



## Step1: Load your Dataset
Please upload the dataset (the file format: csv)

{% include load.html %}


* * *


## Step2: Prediction Visualisation
##### NOTE: You can also download the raw csv file (<a href="https://github.com/hit-lab/boa_atm/master/_data/example.csv">Output Download</a>)

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
</style>


<table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Text</th>
      <th>Actual Label</th>
      <th>Predicted</th>
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
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
$(document).ready(function () {
$('#dtBasicExample').DataTable();
$('.dataTables_length').addClass('bs-select');
});
</script>

