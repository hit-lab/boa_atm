# Introduction
The website aims to visualise the ATM review analysis using deep learning-based text classification. You can easily follow the below instruction, and analyse the predicted feedback. 
If there is any question, please contact the hit lab. 



## Step1: Load your Dataset
Please upload the dataset (the file format: csv)

{% include load.html %}


* * *


## Step2: Prediction Visualisation
##### NOTE: You can also download the raw csv file (<a href="https://github.com/hit-lab/boa_atm/master/_data/example.csv">Output Download</a>)

The prediction output will be visualised as follows:

<style>
body {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
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


<table class="display">
  <thead>
    <tr>
      <td>Text</td>
      <td>Actual Label</td>
      <td>Predicted</td>
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

{% include output.html %}

