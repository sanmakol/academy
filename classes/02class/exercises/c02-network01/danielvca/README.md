
# c02-network01

## Commands Execution Output

Number of hosts takes AWS into consideration.

- Answers for `10.0.0.1/24`:

  - IP in binary: `00001010.00000000.00000000 .00000001`
  - subnet in binary: `11111111.11111111.11111111 .00000000` 
  - subnet in decimals: `255.255.255.0`
  - private/public: `reserved`
  - hosts: `251`

- Answers for `192.168.0.1/16`:

  - IP in binary: `11000000.10101000 .00000000.00000001`
  - subnet in binary: `11111111.11111111 .00000000.00000000` 
  - subnet in decimals: `255.255.0.0`
  - private/public: `Reserved`
  - hosts: `65531` 

- Answers for `249.165.166.135/30`:

  - IP in binary: `11111001.10100101.10100110.10000111`
  - subnet in binary: `11111111.11111111.11111111.11111100` 
  - subnet in decimals: `255.255.255.252`
  - private/public: `public`
  - hosts: `not compatible with AWS (2 hosts)`

- Answers for `236.68.223.18/32`:

  - IP in binary: `11101100.01000100.11011111.00010010`
  - subnet in binary: `11111111.11111111.11111111.11111111` 
  - subnet in decimals: `255.255.255.255`
  - private/public: `public`
  - hosts: `Not compatible with AWS (1 host)`

- Answers for `172.31.0.0/16`:

  - IP in binary: `10101100.00011111 .00000000.00000000`
  - subnet in binary: `11111111.11111111 .00000000.00000000` 
  - subnet in decimals: `255.255.0.0`
  - private/public: `reserved`
  - hosts: `65531`

Source: [http://jodies.de/ipcalc?host=172.31.0.0&mask1=16&mask2=](http://jodies.de/ipcalc?host=172.31.0.0&mask1=16&mask2=)

Source 2: [https://en.wikipedia.org/wiki/Reserved_IP_addresses](https://en.wikipedia.org/wiki/Reserved_IP_addresses)
<!-- Don't change anything below this point-->
***
Answer for exercise [c02-network01](https://github.com/devopsacademyau/academy/blob/893381c6f0b69434d9e8597d3d4b1c17f9bc1371/classes/02class/exercises/c02-network01/README.md)

> Written with [StackEdit](https://stackedit.io/).
