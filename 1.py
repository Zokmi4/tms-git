import os

def check_ping(ip_addresses):
    results = {}
    for ip in ip_addresses:
        response = os.system(f"ping -c 1 {ip}")
        results[ip] = "Доступен" if response == 0 else "Недоступен"
    return results

def save_results(results, filename):
    with open(filename, "w") as file:
        for ip, status in results.items():
            file.write(f"{ip}: {status}\n")

ip_addresses = ["8.8.8.8", "192.168.1.1"]
results = check_ping(ip_addresses)
save_results(results, "ping_results.txt")
