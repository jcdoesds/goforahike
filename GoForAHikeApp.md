Go For A Hike App
========================================================
author: Developing Data Products Project Presentation
date: 2021-12-31
font-family: 'Helvetica'
autosize: true



Purpose
========================================================
type: exclaim

The Go For a Hike App is designed to help people find a suitable hike for them. 
Users can filter to see:

- Hikes by Region (Location)
- Long and Short hikes
- Average User Ratings

Landing Page
========================================================
type: exclaim

Users see all rated hikes on the landing page. 

![landing_page](landing.png)

Interactivity
========================================================
type: exclaim

There are two methods users can interact with the application, using the controls on the right.

- Show a single region: *users can select one of the regions to filter the data*
- Select the number of hikes to see details: *users can select between one and twenty hikes (ties are shown) for the longest and shortest.*

Users get information about average ratings and distance

Data
========================================================
type: exclaim

<div id="bllevuxtpa" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
  <style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#bllevuxtpa .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#bllevuxtpa .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#bllevuxtpa .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#bllevuxtpa .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#bllevuxtpa .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#bllevuxtpa .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#bllevuxtpa .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#bllevuxtpa .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#bllevuxtpa .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#bllevuxtpa .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#bllevuxtpa .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#bllevuxtpa .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#bllevuxtpa .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#bllevuxtpa .gt_from_md > :first-child {
  margin-top: 0;
}

#bllevuxtpa .gt_from_md > :last-child {
  margin-bottom: 0;
}

#bllevuxtpa .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#bllevuxtpa .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#bllevuxtpa .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#bllevuxtpa .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#bllevuxtpa .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#bllevuxtpa .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#bllevuxtpa .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#bllevuxtpa .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#bllevuxtpa .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#bllevuxtpa .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#bllevuxtpa .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#bllevuxtpa .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#bllevuxtpa .gt_left {
  text-align: left;
}

#bllevuxtpa .gt_center {
  text-align: center;
}

#bllevuxtpa .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#bllevuxtpa .gt_font_normal {
  font-weight: normal;
}

#bllevuxtpa .gt_font_bold {
  font-weight: bold;
}

#bllevuxtpa .gt_font_italic {
  font-style: italic;
}

#bllevuxtpa .gt_super {
  font-size: 65%;
}

#bllevuxtpa .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 65%;
}
</style>
  <table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1"><strong>Variable</strong></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1"><strong>Central Cascades</strong>, N = 230<sup class="gt_footnote_marks">1</sup></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1"><strong>Central Washington</strong>, N = 87<sup class="gt_footnote_marks">1</sup></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1"><strong>Eastern Washington</strong>, N = 116<sup class="gt_footnote_marks">1</sup></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1"><strong>Issaquah Alps</strong>, N = 109<sup class="gt_footnote_marks">1</sup></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1"><strong>Mount Rainier Area</strong>, N = 188<sup class="gt_footnote_marks">1</sup></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1"><strong>North Cascades</strong>, N = 299<sup class="gt_footnote_marks">1</sup></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1"><strong>Olympic Peninsula</strong>, N = 248<sup class="gt_footnote_marks">1</sup></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1"><strong>Puget Sound and Islands</strong>, N = 280<sup class="gt_footnote_marks">1</sup></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1"><strong>Snoqualmie Region</strong>, N = 215<sup class="gt_footnote_marks">1</sup></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1"><strong>South Cascades</strong>, N = 189<sup class="gt_footnote_marks">1</sup></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1"><strong>Southwest Washington</strong>, N = 117<sup class="gt_footnote_marks">1</sup></th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left" style="font-weight: bold;">DISTANCE</td>
<td class="gt_row gt_center">8.0</td>
<td class="gt_row gt_center">5.0</td>
<td class="gt_row gt_center">5.8</td>
<td class="gt_row gt_center">2.6</td>
<td class="gt_row gt_center">6.0</td>
<td class="gt_row gt_center">8.0</td>
<td class="gt_row gt_center">6.2</td>
<td class="gt_row gt_center">3.0</td>
<td class="gt_row gt_center">8.0</td>
<td class="gt_row gt_center">7.0</td>
<td class="gt_row gt_center">4.4</td></tr>
    <tr><td class="gt_row gt_left" style="font-weight: bold;">RATING</td>
<td class="gt_row gt_center">3.50</td>
<td class="gt_row gt_center">3.50</td>
<td class="gt_row gt_center">3.60</td>
<td class="gt_row gt_center">3.05</td>
<td class="gt_row gt_center">3.73</td>
<td class="gt_row gt_center">3.60</td>
<td class="gt_row gt_center">3.67</td>
<td class="gt_row gt_center">3.50</td>
<td class="gt_row gt_center">3.67</td>
<td class="gt_row gt_center">3.29</td>
<td class="gt_row gt_center">3.60</td></tr>
    <tr><td class="gt_row gt_left" style="font-weight: bold;">LATITUDE</td>
<td class="gt_row gt_center">47.79</td>
<td class="gt_row gt_center">46.93</td>
<td class="gt_row gt_center">47.90</td>
<td class="gt_row gt_center">47.53</td>
<td class="gt_row gt_center">46.89</td>
<td class="gt_row gt_center">48.53</td>
<td class="gt_row gt_center">47.82</td>
<td class="gt_row gt_center">47.79</td>
<td class="gt_row gt_center">47.43</td>
<td class="gt_row gt_center">46.30</td>
<td class="gt_row gt_center">45.77</td></tr>
    <tr><td class="gt_row gt_left" style="font-weight: bold;">LONGITUDE</td>
<td class="gt_row gt_center">-120.87</td>
<td class="gt_row gt_center">-120.01</td>
<td class="gt_row gt_center">-117.53</td>
<td class="gt_row gt_center">-122.03</td>
<td class="gt_row gt_center">-121.70</td>
<td class="gt_row gt_center">-121.29</td>
<td class="gt_row gt_center">-123.32</td>
<td class="gt_row gt_center">-122.36</td>
<td class="gt_row gt_center">-121.41</td>
<td class="gt_row gt_center">-121.76</td>
<td class="gt_row gt_center">-122.12</td></tr>
    <tr><td class="gt_row gt_left" style="font-weight: bold;">REPORT_COUNT</td>
<td class="gt_row gt_center">49</td>
<td class="gt_row gt_center">20</td>
<td class="gt_row gt_center">10</td>
<td class="gt_row gt_center">61</td>
<td class="gt_row gt_center">56</td>
<td class="gt_row gt_center">41</td>
<td class="gt_row gt_center">40</td>
<td class="gt_row gt_center">21</td>
<td class="gt_row gt_center">106</td>
<td class="gt_row gt_center">18</td>
<td class="gt_row gt_center">16</td></tr>
  </tbody>
  <tfoot class="gt_sourcenotes">
    <tr>
      <td class="gt_sourcenote" colspan="12"><em>The data shown in the app and this presentation are taken directly fromhttps://raw.githubusercontent.com/yoshiohasegawa/wta-scraper/master/Results/2021-04-25_wta_hike_data.csvand represent a snapshot in time of WTA data.</em></td>
    </tr>
  </tfoot>
  <tfoot>
    <tr class="gt_footnotes">
      <td colspan="12">
        <p class="gt_footnote">
          <sup class="gt_footnote_marks">
            <em>1</em>
          </sup>
           
          Median
          <br />
        </p>
      </td>
    </tr>
  </tfoot>
</table>
</div>
