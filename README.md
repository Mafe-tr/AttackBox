# AttackBox CSI — Operação Espelho

Ambiente de ataque (**Kali Linux**) pronto para enfrentar o CTF **Operação Espelho**.
Este pacote sobe o **alvo** (imagem publicada no Docker Hub) e um **toolbox** com as
ferramentas de pentest, já na mesma rede, para você atacar como num pentest real.

> Independente do repositório principal: só precisa de Docker. A imagem do alvo é
> baixada do Docker Hub e a AttackBox é construída a partir do `Dockerfile` incluído.

## Ferramentas incluídas
Gobuster, DIRB, Nmap, Netcat, Hashcat, John the Ripper (com `gpg2john`), GPG,
cliente OpenSSH, `sshpass`, Binwalk, `strings` (binutils), `file`, `unzip`, `curl`,
`dig`/`nslookup`, Python 3 e a wordlist **RockYou** (já descompactada em
`/usr/share/wordlists/rockyou.txt`).

## Como usar
```bash
# sobe o alvo + a attackbox
docker compose up -d --build

# abre um shell na attackbox
docker compose exec attackbox bash
```

Dentro da attackbox, o alvo responde pela DNS da rede do Compose:

| O quê            | Endereço                         |
|------------------|----------------------------------|
| Painel web       | `http://csi`                     |
| Site de fachada  | `http://rastreio.portonorte.local` |
| SSH              | `ssh <usuario>@csi` (porta 22)   |

A pasta `/work` persiste entre sessões (volume) para guardar arquivos extraídos.

## Objetivo
Capturar as **6 flags** no formato `TAC{...}` e, ao final, identificar o culpado.
*(Sem spoilers aqui — a trilha é com você.)*

## Parar / limpar
```bash
docker compose down       # para e remove os containers
docker compose down -v    # idem + apaga o volume /work
```

## Requisitos
Docker + Docker Compose.
