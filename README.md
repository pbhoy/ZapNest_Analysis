
![Untitled1](https://github.com/user-attachments/assets/7f494ca0-cc9d-4717-afb4-9430e848425b)

<h1 align="center"> Performance Analysis</h1>


<h2 align="center"> Company Background </h2>
 <div align="justify">
   
<a name="top"></a>   
**ZapNest** is a rapidly growing consumer electronics company founded in 2018. The company sells popular electronics products through its website and mobile app while leveraging various marketing channels, including email campaigns, social media promotions, SEO, and affiliate partnerships, to expand its reach and enhance brand awareness. With an increasing customer base worldwide, ZapNest aims to deliver cutting-edge products and ensure exceptional customer satisfaction. 

Despite having a substantial amount of customer and sales data, **ZapNest** has yet to fully utilize this data to drive business improvements. **ZapNest's** book of business is approaching **88,000** customers and possesses over **108,127** transactions, generating sales revenue exceeding **$28** million. This project focuses on analyzing their data, identifying key trends, and providing actionable insights to optimize marketing strategies, enhance sales performance, and improve customer experience.

</div>
<h2 align="center"> Executive Summary </h2>



 <img width="1000" alt="Summary" src="https://github.com/user-attachments/assets/9abcb7b3-25db-4e6b-9eae-a7e91e18aa3b" />



<div align="justify">

 In last 4 years company has **sold 108,127 products worth ~28M in revenue with Average Order Value of $250.**
- Sales trends show **a peak in November (17%) and December (23%) each year**, aligning with holiday shopping, while **October consistently declines by 25-30%**, indicating a pre-holiday spending slowdown.
- **Apple AirPods remain the top-selling product** but faced a 41% YOY decline in 2022, while **Samsung Charging Cable Pack maintained steady demand** with sales peaking at $7,301 in 2021.
- **ThinkPad (12% refund rate) and MacBook Air (11%) had the highest returns**, suggesting potential quality or customer satisfaction issues.
- **The loyalty program grew 4x from 2019 to 2020**, with loyalty orders surpassing non-loyalty in 2021, but **dropped by 81% in December 2022**, highlighting engagement challenges.
- A data-driven strategy focusing on retention, incentives, and seasonal demand optimization is needed to drive long-term growth.

</div>


<h2 align="center"> Analysis Overview </h2>
 <div align="justify">
   
Insights and recommendations are provided on following key areas:

   
- **Sales Trends Analysis:** Analyzed four years of sales data on revenue, order volume, and AOV, identifying seasonal patterns and MoM changes.  
- **Product Performance Evaluation:** Assessed product demand across regions, highlighting top-performing products and areas for catalog optimization.  
- **Loyalty Program Impact Analysis:** Measured loyalty program effectiveness by comparing order volume of enrolled vs. non-enrolled customers to guide program improvements.
  
</div>

<h2 align="center"> About data</h2>

**Tools Used**
- **BigQuery:** Script can be found [here](https://github.com/pbhoy/ZapNest_Analysis/tree/main/SQL).
- **Excel:** Dataset can be found [here](https://github.com/pbhoy/ZapNest_Analysis/tree/main/Excel).
- **Dataset Summary & Issue Log:** Issue log can be found [here](https://github.com/pbhoy/ZapNest_Analysis/blob/main/Issue%20Log_ZapNest.xlsx).
- **ERD:** ERD can be found [here](https://github.com/pbhoy/ZapNest_Analysis/blob/main/Blank%20diagram.png).


<h2 align="center"> Deep-Dive Insights </h2>
 <div align="justify">

## Sales Trends
![Sales Trend](https://github.com/user-attachments/assets/4ab11521-c8ee-409d-a27d-b7e0ea0f02e2)
<p align="center"> <img src=https://github.com/user-attachments/assets/c5cc6694-fb53-4011-a659-2a9550c9f9f5> </p>


<div align="justify">
  
* Sales trends clearly show that the company experiences a spike in sales each year in November (avg 21%) and December (avg 22%), aligning with the holiday season.
* Over the past four years, October has consistently shown a sharp decline in sales, suggesting a seasonal dip likely (avg 31%) due to reduced consumer spending before major holidays.
* An unusual spike occurred in March 2020, with a significant 50% increase, likely driven by the pandemic lockdown, which prompted consumers to purchase essential tech for remote work.
* The **Average Order Value (AOV) began rising significantly at the start of 2020**, reaching its **peak in October 2020** with an all-time **high of $322**. This surge in AOV was **primarily driven by increased sales of high-value products**, particularly big-ticket items like the **27-inch 4K gaming monitor and the MacBook Air laptop**. These premium products contributed heavily to boosting order values during this period.
* However, from **December 2020 onward, AOV began to decline**, and it has not returned to those elevated levels since. This downward trend suggests a potential shift in customer spending behavior, with **consumers moving away from high-end purchases** toward lower-cost products or reducing overall spending, possibly as pandemic-driven demand eased.
  
## Product Performance Evaluation
![Product Performance](https://github.com/user-attachments/assets/10055a8b-2a56-43b5-a3ac-bf27ad1b4143)
<p align="center"> <img src=https://github.com/user-attachments/assets/112fbfec-23e9-425f-a957-d646c680dc27> </p>

* **Apple AirPods Headphones have consistently been the top-performing product** over the past four years. However, **YOY sales declined by 41% in 2022**, indicating a slowdown in demand despite high sales volume. This trend suggests a need for strategic intervention to sustain long-term growth.

* **Samsung Charging Cable Pack demonstrated the most stable performance**, reaching a peak of $7,301 in 2021. Despite a decline from 2021 levels, its **continued steady demand** highlights the necessity of essential tech accessories.
* Bose SoundSport Headphones consistently underperformed, with sales plummeting to just $1 in 2022. This sharp contrast suggests that Bose struggles to compete against dominant brands like Apple.
* Return rates indicate potential product quality or customer satisfaction concerns:
   * **ThinkPad Laptop (12%)** and **MacBook Air (11%)** have the **highest return rates**, suggesting possible quality issues or unmet customer expectations.
   * **Bose SoundSport Headphones (0%) show no refunds**, but this is likely **due to extremely low sales** rather than superior quality.


## Loyalty Program
![Loyalty Program](https://github.com/user-attachments/assets/77b80c80-93ff-430d-8cdb-a829232d632a)


<div align="justify">

  
* Since the launch of loyalty program in 2019 it has shown consistant growth till 2021. In 2019, loyalty members contributed only a small portion of total orders. By 2020, loyalty orders surged significantly, growing over 4x in volume compared to 2019, reflecting a strong adoption rate.
* In 2021, the program achieved a significant milestone—loyalty members surpassed non-loyalty members in total orders, marking a major success in driving customer retention and repeat purchases. However, this momentum did not sustain in 2022 as order volumes declined for both loyalty and non-loyalty customers.
* While the program has clearly proven its value in boosting order volume, a targeted retention strategy is now crucial to revitalize customer interest and sustain long-term growth.
</div>
</table>
<h1 align="center"> Recommendations </h1>


 <div align="justify">



## Sales Trend Analysis
* Leverage Seasonal Sales Patterns: Implement aggressive promotional campaigns and early-bird holiday discounts in November and December to capitalize on the 17% and 23% sales spikes, while introducing pre-holiday deals in October to mitigate the consistent decline in sales during that month.
* AOV Recovery Strategy: Focus on bundling high-ticket products such as 4K monitors and MacBooks with complementary accessories (e.g., cables, stands) to revive AOV levels, while targeting premium customer segments to restore the $322 peak AOV observed in October 2020.
## Product Performance Evaluation
* Product Lifecycle and Demand Stimulation: Introduce updated models or refreshed versions of top-performing products like Apple AirPods to address the 41% YOY decline in 2022 sales, while running retention campaigns to sustain long-term product demand.
* Product Quality and Return Reduction: Investigate high return rates for ThinkPad Laptops (12%) and MacBook Air (11%), and collaborate with QA  and the sales team to check potential causes for returned items and enhance product descriptions and customer support to reduce return-driven revenue loss.
## Loyalty Program Analysis
*	Customer Retention & Re-engagement: Introduce personalized rewards, exclusive product previews, and limited-time discounts to reignite member engagement following the 2022 decline, emphasizing the value of repeat purchases to maintain the 2021 peak order volume.
*	Program Expansion & Segmentation: Expand the loyalty program by offering tiered benefits based on spending levels, with higher-value tiers targeting premium customers who drove AOV peaks in 2020, ensuring continued growth and sustained customer loyalty.

</div>



[🔼 Back to top]()
