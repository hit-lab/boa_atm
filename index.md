# Introduction
The website aims to visualise the ATM review analysis using deep learning-based text classification. You can easily follow the below instruction, and analyse the predicted feedback. 
If there is any question, please contact the hit lab. 



## Step1: Load your Dataset
Please upload the dataset (the file format: csv)

{% include load.html %}

The following shows the sample csv file that you can use in this system:

| head1        | head two          | three |
|:-------------|:------------------|:------|
| ok           | good swedish fish | nice  |
| out of stock | good and plenty   | nice  |
| ok           | good `oreos`      | hmm   |
| ok           | good `zoute` drop | yumm  |


* * *


## Step2: Prediction Visualisation
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
      <td>{{example.label}}</td>
    </tr>
    {% endfor %}
  </tbody>
</table>
