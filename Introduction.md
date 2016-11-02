#Introduction:
Every foodie wants to taste dishes from different regions. But going to different places to
taste different dishes is impractical. So we are solving this problem of food lovers.
We are making a website where we will list diverse regional recipes. Any person from across
the globe thus gets to choose his cart as per his will.
We directly get all the supplies from our authorised suppliers and ship it to our customers.
So, basically we are making "An Online Food Ordering Store".

<h2>Challenges:</h2>
1. To keep a record of products and the suppliers who offer them.</br>
2. To establish proper sync between shippers, suppliers and customers for a better
customer experience.</br>
3. To keep a temporary record of bills and previous orders.</br>
4. To give the customers a utility to check whether a particular good is available in their
region or not and also give them a utility to keep a track of their current orders.</br>
5. To store the current cart of a customer in a temporary database.</br>
6. To ensure the integrity of database and atomicity of transactions.</br>
7. To categorise the products under different hoods and give the customers the utility
to use different filters to narrow down their cart.</br>
8. To provide food suggestions to the users based on their what's trending in their
locality.</br>
9. To provide a custom search utility.</br>

<h2>Features of the project and our plan to overcome above mentioned
challenges: </h2>
1. We will create separate tables for customers, suppliers, shippers, products,
categories, billing information as they are strong entities. A detailed ER analysis
report(tentative) has been submitted along with this introduction report. Through ER
analysis and data modelling, we model all our data as per our need and most of the challenges get solved. We will implement the project in SQL (structured query
language) and thus it ensures that the projects is in accordance with ACID concepts.</br>
2. Keep a track of popular suppliers and trending products:</br>
3. We plan to store in a temporary database, the most ordered/trending products of
the last 15 days and similarly for the suppliers.</br>
4. Food Categories and Filters : We will categorise all our products by creating a separate entity of categories for
every product. Various filters will be provided to filter the products according to
their respective categories.</br>
5. Search Utility </br>
6. Cart Facility : While exploring different products, a user can add or modify his/her cart at any
point. We plan to relate the cart table with every individual customer whose tupples
will be updated on every modification. </br>
7. We plan to implement our project using relational database model. But, since no
model is perfect and if some object oriented model comes out to be better than the
existing models than we might shift some of the data to that. But, as of yet we plan
to do it as relational model.</br>
8. Reward Points : We plan to add an attribute of reward points to every customer. Keeping a track of
that we will thus reward those people with special gifts who reach a threshold of
reward points.</br>
9. The complete ER Analysis and the ER Diagram of the challenges and the modelling in order
to overcome those challenges is in the ER-analysis file!</br>

<h2>Wish list</h2>
In addition to the features above, we will try to implement the
below mentioned features also, if time permits):</br>
1. Connect with Google Maps and provide the customers an amazing experience to
explore using GUI, the earth and the regional specials.</br>
2. Using Machine Learning algorithms, we will try to show the customers the
products he/ she is interested in usually.</br>
3. We can connect with some food bloggers and try to put on weekly
features/special items (if we, in future implement this as a business model of a
real start up).</br>
4. Implement the web app as a hybrid app.</br>
5. Using skyport.js library we will try to make the web app ready for offline use too.
(Helpful in case of network fluctuations).</br>
