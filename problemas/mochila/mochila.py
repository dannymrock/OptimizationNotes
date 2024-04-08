import minizinc

with open('mochila.mzn','r') as file:
    knapsack_model = file.read()
    print(knapsack_model)

# Create a MiniZinc model
model = minizinc.Model()
model.add_string(knapsack_model)

# Transform Model into a instance
gecode = minizinc.Solver.lookup("gecode")
inst = minizinc.Instance(gecode, model)
inst["capacity"] = 9

# Solve the instance
result = inst.solve(all_solutions=False) # Con true daba error
print("-------------------------------------------------------")
print(result)
print()
print("e = {}".format(result["e"]))
    