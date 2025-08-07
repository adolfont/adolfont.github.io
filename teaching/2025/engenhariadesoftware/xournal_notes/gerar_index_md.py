import os

# Pasta onde estão os arquivos (relativa ao script ou absoluta)
PASTA = "."  # ajuste para o caminho que você quer
URL_BASE = "."

# Nome do arquivo de índice gerado
ARQUIVO_INDEX = os.path.join(PASTA, "index.md")

arquivos = sorted([
    f for f in os.listdir(PASTA)
    if os.path.isfile(os.path.join(PASTA, f)) and not f.startswith("index") and not f.endswith("autosave.xopp") and not f.endswith(".py")
])

with open(ARQUIVO_INDEX, "w", encoding="utf-8") as f:
    f.write(f"# Índice de arquivos em `{PASTA}`\n\n")
    for nome in arquivos:
        url = f"{URL_BASE}/{nome}"
        f.write(f"- [{nome}]({url})\n")

print(f"Arquivo '{ARQUIVO_INDEX}' gerado com {len(arquivos)} links.")
