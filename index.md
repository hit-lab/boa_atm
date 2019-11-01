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

<table>
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

