local nome = {
  "Carlos",
  "Thiago",
  "Danilo",
  "Lucas",
  "Rodolfo",
  "Roberto",
  "Chico",
  "Carla",
  "Roberta",
  "Rafa",
  "Leticia",
  "Maria",
  "Marta",
  "Jacinto",
  "Julia"
}

local sobrenome = {
  "Barros",
  "Carvalho",
  "Silva",
  "Roberto",
  "Madeira",
  "Leite",
  "Pinto",
  "Costa",
  "Machado",
  "Cavalcante"
}

local leng = {
  "Brasileiro(a)",
  "Espanhol",
  "Portugues(a)",
  "Argentino(a)",
  "Colombiano(a)",
  "Ingles(a)",
  "Frances(a)",
  "Indiano(a)",
  "Africano(a)"
}

local lengpr = {
  "Assembly",
  "Fortran",
  "Lua",
  "Java",
  "Javascript",
  "Python",
  "C++",
  "C",
  "C#",
  "Go",
  "R",
  "Rust",
  "PHP",
  "Ruby",
  "Kotlin",
  "Swift",
  "Luau",
  "Julia",
  "Jython",
  "Cobol"
}

local function escolher()
  local nomeEs = math.random(1, #nome)
  local sobreEs = math.random(1, #sobrenome)
  local lengEs = math.random(1, #leng)
  local lengprEs = math.random(1, #lengpr)
  local idade = math.random(1, 100)
  local qi = math.random(81, 300)
  
  return string.format("Nome: %s %s\nIdade: %d\nNacionalidade: %s\nLinguagem favorita: %s\nQI: %d", nome[nomeEs], sobrenome[sobreEs], idade, leng[lengEs],lengpr[lengprEs], qi)
end

print(escolher())
print("\n\nDigite 'y' para criar um novo.")
local user = io.read()

if user == "y" or user == "Y" then
  repeat
    os.execute("cls")
    print(escolher())
    print("\n\nDigite 'y' para criar um novo.")
    user = io.read()
  until user ~= "y" and user ~= "Y"
else
  print("ta")
end