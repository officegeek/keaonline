import requests

def main():
    response = requests.get('http://flask:5000/')
    print(response.text)

if __name__ == '__main__':
    main()