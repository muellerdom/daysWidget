#Widget that shows remainig days
#Author: Dominik Müller


refreshFrequency: 60000;

command: "curl -s 'https://kit.fontawesome.com/a076d05399.js'"

style:"""
  width: auto;
  height: auto;
  /* Center vertically and horizontally */
  position: absolute;
  top: 50%;
  left: 50%;
  margin: -150px 0 0 -100px;
  
  .header{
  font-family: "DK Crayon Crumble",serif;
  font-size: 40px;
  text-align: center;
  color: white;
}

.elapsedDays{
  font-family: "DK Crayon Crumble",serif;
  text-decoration-line: line-through;
  font-size: 30px;
  color: red;
  margin-top: -10%;
  text-align: center;
}

.remainingDays{
  font-family: "DK Crayon Crumble",serif;
  font-size: 50px;
  color: white;
  text-align: center;
  margin-top: -6%;
}
"""

render: (output) -> """
        <div>
            <h1 class="header">Days I have left</h1>
            <div class="elapsedDays">  </div>
            <div class="remainingDays"></div>
        </div>
 """
 
update: (output, domEl) ->
    dom = $(domEl)
    
    birthdate = new Date("October 01, 2000")
    currentDate = new Date()
    futureDate = new Date("October 01, 2100") #100 years in future

    
    DAY = 1000 * 60 * 60 * 24 #calculates hours of day
    
    days_passed = Math.round((currentDate.getTime() - birthdate.getTime()) / DAY)
    days_remain = Math.round((futureDate.getTime() - currentDate.getTime()) / DAY)
    
    dom.find(".elapsedDays").html(days_passed)
    dom.find(".remainingDays").html(days_remain)
    
    
    
    
    
    
    
    
    
    
    
    