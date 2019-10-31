/*:
# Module Project - NOC List

Greetings agent. Your mission is a top priority for the agency. Please read below for further info.

Our undercover agents in Eastern Europe are in trouble. The NOC list (Non-official cover) has been leaked and we need our directors to have quick access to the information so we can try to mitigate the damage. Some of the agents on the list have an access level that makes them privy to very sensitive information. We need an application that will present the NOC list's information in a quickly digestible format. Our top agents have been working on it, but we need this done ASAP and you've proven yourself to be quite capable of a quick turnaround.

The Director herself has given you access to all the agency's resources to complete this mission. We're counting on you agent.

Here is the complete NOC List. This information is classified at the highest levels, so guard it very carefully.

 ---
 
 * coverName: "Ethan Hunt", realName: "Tom Cruise", accessLevel: 8, compromised: false
 * coverName: "Jim Phelps", realName: "Jon Voight", accessLevel: 9, compromised: true
 * coverName: "Claire Phelps", realName: "Emmanuelle Beart", accessLevel: 5, compromised: false
 * coverName: "Eugene Kittridge", realName: "Henry Czerny", accessLevel: 10, compromised: true
 * coverName: "Franz Krieger", realName: "Jean Reno", accessLevel: 4, compromised: false
 * coverName: "Luther Stickell", realName: "Ving Rhames", accessLevel: 4, compromised: false
 * coverName: "Sarah Davies", realName: "Kristin Scott Thomas", accessLevel: 5, compromised: true
 * coverName: "Max RotGrab", realName: "Vanessa Redgrave", accessLevel: 4, compromised: false
 * coverName: "Hannah Williams", realName: "Ingeborga Dapkūnaitė", accessLevel: 5, compromised: true
 * coverName: "Jack Harmon", realName: "Emilio Estevez", accessLevel: 6, compromised: true
 * coverName: "Frank Barnes", realName: "Dale Dye", accessLevel: 9, compromised: false
 
 ---

This message will self destruct in 5 seconds.
*/
//: ## Step 1
//: Create constants for each of the above agents and store all their information in a tuple.
let agent = (coverName: "Ethan Hunt", realName: "Tom Cruise", accessLevel: 8, compromised: false)
let agent2 = (coverName: "Jim Phelps", realName: "Jon Voight", accessLevel: 9, compromised: true)
let agent3 = (coverName: "Claire Phelps", realName: "Emmanuelle Beart", accessLevel: 5, compromised: false)
let agent4 = (coverName: "Eugene Kittridge", realName: "Henry Czerny", accessLevel: 10, compromised: true)
let agent5 = (coverName: "Franz Krieger", realName: "Jean Reno", accessLevel: 4, compromised: false)
let agent6 = (coverName: "Luther Stickell", realName: "Ving Rhames", accessLevel: 4, compromised: false)
let agent7 = (coverName: "Sarah Davies", realName: "Kristin Scott Thomas", accessLevel: 5, compromised: true)
let agent8 = (coverName: "Max RotGrab", realName: "Vanessa Redgrave", accessLevel: 4, compromised: false)
let agent9 = (coverName: "Hannah Williams", realName: "Ingeborga Dapkūnaitė", accessLevel: 5, compromised: true)
let agent10 = (coverName: "Jack Harmon", realName: "Emilio Estevez", accessLevel: 6, compromised: true)
let agent11 = (coverName: "Frank Barnes", realName: "Dale Dye", accessLevel: 9, compromised: false)


//: ## Step 2
//: Place the above constants inside an array. Declare this array as a constant as well.
let miAgents = [agent, agent2, agent3, agent4, agent5, agent6, agent7, agent8, agent9, agent10, agent11]


//: ## Step 3
//: Create a function that calculates the total number of compromised agents. Inside the function, iterate over the array of agents to determine which ones are compromised. Return the total count.
func compromisedAgents() -> Int {
    var agentCount = 0
    for miAgent in miAgents {
        if miAgent.compromised == true {
            agentCount += 1
        }
    }
    
    return agentCount
}

compromisedAgents()
print(compromisedAgents())
//: ## Step 4
//: Call the above function to find the total number of compromised agents and then print a sentence that says "# agents have been compromised!" using string interpolation.
compromisedAgents()
print("\(compromisedAgents()) agents have been compromised")

//: ## Step 5
//: Create a function called "findCleanAgents" that both prints the cover names of all uncompromised agents, as well as returns an array of agents that are uncompromised.
func findCleanAgents() -> [(coverName: String, realName: String, accessLevel: Int, compromised: Bool)] {
    var cleanAgents: [(coverName: String, realName: String, accessLevel: Int, compromised: Bool)] = []
    var agentCount = 0
    for miAgent in miAgents {
        if miAgent.compromised == false {
            agentCount += 1
            cleanAgents.append(miAgent)
            print(miAgent.coverName)
        }
    }
    
    return cleanAgents
}

findCleanAgents()
//: ## Step 6
//: Call the above function to find the total number of clean agents and print a message that says "# clean agents out of # total agents." Use the total number of agents in the array from step 2 as the second number in the string.
let cleanAgents = findCleanAgents()
print("\(cleanAgents.count) agents out of \(miAgents.count) total agents")


//: ## Step 7
//: Create a function called "findHighRisk" that prints out the real names and access levels of agents with level 8 or higher. If one of these agents is also currently compromised, add `**WARNING** **COMPROMISED**` to the end of the string that includes their name and access level.
//: - Example: `Jon Voight, level: 9 **WARNING** **COMPROMISED**`
func findHighRisk() {
    var count = 8
    for highRiskAgent in miAgents {
        if highRiskAgent.accessLevel > 7 {
            if highRiskAgent.compromised == true {
                count += 1
                print("Mi-agent \(highRiskAgent.realName), compromised level is \(highRiskAgent.compromised), with an access level of \(highRiskAgent.accessLevel) **WARNING** **COMPROMISED**")
            }
        }
    }
}
findHighRisk()

//: ## Step 8
//: Call the above function and check the output in the console to ensure it is functioning properly.
findHighRisk()


//: ## Step 9
//: Create a function that finds totals for low, mid, and high level agents. Low level agents are 4 or lower, mid are 5-7, and high level agents are 8 or above. Iterate over each agent and use a `switch` statement to determine their level group. At the end of the function, print a statement like the following: "# low level agents, # mid level agents, and # high level agents"

func findTotal() {
    for totalAgent in miAgents {
        var count = 0
        switch totalAgent.accessLevel {
        case 0...4:
            count += 1
            print("\(count) low level agents")
        case 5...7:
            count += 1
            print("\(count) mid level agents")
        case 8...11:
            count += 1
            print("\(count) high level agents")
        default:
            print("No agents available")
                
            }
        }
    }

//: ## Step 10
//: Call the above function and check its output in the console.
findTotal()


//: ## Step 11 (Optional)
//: Create and call a function that prints the cover names and access levels of all agents, but the list should be sorted by access level, in ascending order.


