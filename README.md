# Elist Analysis

# Company Background:
Elist is a rapidly growing consumer electronics company founded in 2018. The company sells popular electronics products through its website and mobile app while leveraging various marketing channels, including email campaigns, social media promotions, SEO, and affiliate partnerships, to expand its reach and enhance brand awareness. With an increasing customer base worldwide, Elist aims to deliver cutting-edge products and ensure exceptional customer satisfaction. Despite having a substantial amount of customer and sales data, Elist has yet to fully utilize this data to drive business improvements. This project focuses on analyzing their data, identifying key trends, and providing actionable insights to optimize marketing strategies, enhance sales performance, and improve customer experience.

# Analysis Overview:
Insights and recommendations are provided on following key areas:
*	Sales Trends Analysis: Conducted an in-depth analysis of sales data over the past three years, focusing on total revenue, order volume, and average order value (AOV). Additionally, examined month-over-month (MoM) percentage changes in these key metrics to identify overall sales trends and seasonal variations.
*	Product Performance Evaluation: Assessed product-level performance over time and across different regions to identify high-performing (star) products and underperforming items. This analysis provides insights into product demand, regional preferences, and potential areas for optimization in the product catalog.
*	Loyalty Program Impact Analysis: Compared order volume between customers enrolled in the loyalty program and those who are not. This evaluation helps determine the program's effectiveness in driving repeat purchases and informs decisions regarding its continuation or potential improvements.
*	Refund Rate Analysis: Analyzed refund rates across various products to identify items with higher-than-average return rates. Understanding refund trends enables strategic decision-making to minimize returns, improve product quality, and enhance customer satisfaction. 

## About Data:
The dataset provides sales and order data for Elist’s product portfolio globally. The raw dataset consists of about 108,000 rows:
*	Workbook for analysis and more detailed insights can be found here.
*	For more details about the dataset and the data cleaning process check out the ERD and the Dataset Summary & Issue Log
*	See more of my exploration and analysis in SQL.
### ERD: ![Blank diagram](https://github.com/user-attachments/assets/f4eae69e-4069-4b2c-bd71-e2825727e49f)

# Executive Summary
In last 4 years company has **sold 62,431 products worth ~17M in revenue with Average Order Value of $263.**

Sales trends show **a peak in November (17%) and December (23%) each year**, aligning with holiday shopping, while **October consistently declines by 25-30%**, indicating a pre-holiday spending slowdown. 
**Apple AirPods remain the top-selling product** but faced a 41% YOY decline in 2022, while **Samsung Charging Cable Pack maintained steady demand** with sales peaking at $7,301 in 2021. **ThinkPad (12% refund rate) and MacBook Air (11%) had the highest returns**, suggesting potential quality or customer satisfaction issues.
**The loyalty program grew 4x from 2019 to 2020**, with loyalty orders surpassing non-loyalty in 2021, but **dropped by 81% in December 2022**, highlighting engagement challenges. A data-driven strategy focusing on retention, incentives, and seasonal demand optimization is needed to drive long-term growth.



# Deep-Dive Insights
## Sales Trends
![Sales Trend](https://github.com/user-attachments/assets/b55b3e55-978f-469c-b151-35eb85ab54d3)
![Mom Sales Growth](https://github.com/user-attachments/assets/2057e900-416b-4c93-81eb-c76eac42bb8e)

* Sales trends clearly show that the company experiences a spike in sales each year in November (17%) and December (23%), aligning with the holiday season.
* Over the past four years, October has consistently shown a sharp decline in sales, suggesting a seasonal dip likely due to reduced consumer spending before major holidays.
* An unusual spike occurred in March 2020, with a significant 50% increase, likely driven by the pandemic lockdown, which prompted consumers to purchase essential tech for remote work.
  
## Product Performance Evaluation
![Product Performance](https://github.com/user-attachments/assets/10055a8b-2a56-43b5-a3ac-bf27ad1b4143)
![Return Rate](https://github.com/user-attachments/assets/112fbfec-23e9-425f-a957-d646c680dc27)

* **Apple AirPods Headphones have consistently been the top-performing product** over the past four years. However, **YOY sales declined by 41% in 2022**, indicating a slowdown in demand despite high sales volume. This trend suggests a need for strategic intervention to sustain long-term growth.
* Overall product **sales peaked in 2020 and 2021**, likely driven by the surge in demand for remote work and entertainment devices during the COVID-19 lockdowns.
* **Samsung Charging Cable Pack demonstrated the most stable performance**, reaching a peak of $7,301 in 2021. Despite a decline from 2021 levels, its **continued steady demand** highlights the necessity of essential tech accessories.
* Bose SoundSport Headphones consistently underperformed, with sales plummeting to just $1 in 2022. This sharp contrast suggests that Bose struggles to compete against dominant brands like Apple.
* Return rates indicate potential product quality or customer satisfaction concerns:
   * **ThinkPad Laptop (12%)** and **MacBook Air (11%)** have the **highest return rates**, suggesting possible quality issues or unmet customer expectations.
   * **Bose SoundSport Headphones (0%) show no refunds**, but this is likely **due to extremely low sales** rather than superior quality.


## Loyalty Program

![Loyalty Program](https://github.com/user-attachments/assets/77b80c80-93ff-430d-8cdb-a829232d632a)

* Since the launch of loyalty program in 2019 it has shown consistant growth till 2021. In 2019, loyalty members contributed only a small portion of total orders. By 2020, loyalty orders surged significantly, growing over 4x in volume compared to 2019, reflecting a strong adoption rate.
* In 2021, the program achieved a significant milestone—loyalty members surpassed non-loyalty members in total orders, marking a major success in driving customer retention and repeat purchases. However, this momentum did not sustain in 2022 as order volumes declined for both loyalty and non-loyalty customers.
* While the program has clearly proven its value in boosting order volume, a targeted retention strategy is now crucial to revitalize customer interest and sustain long-term growth.
