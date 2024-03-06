## Inaya Rahmanisa - 2106708330
### Proses Pengerjaan Level Baru
---
### **Informasi umum:**<br>
Level baru berada pada `/scenes/LevelBaru.tscn`. 
### **Fitur Umum pada level baru:**<br>
- Tilemap. Level ini menggunakan tilemap untuk tileset bertemakan snow. Tileset yang digunakan adalah snow dan bakcground berwarna biru, yang berbeda dengan level 1.
- Memiliki rintangan berupa jurang yang dibawahnya merupakan area game over.
- Memiliki 3 objek yang di-spawn, yaitu block biru, block bata, dan coin. 
- Memiliki 2 spawner yang berbeda. Spawner pertama adalah spawner biasa yang digunakan pada Level 1. Spawner kedua adalah `fasterSpawner` yang melakukan spawn selama 0.05 detik sekali. 

### **Penjelasan Fitur khusus pada level baru:**<br>
Akan dijelaskan berdasarkan spawner.<br>
- Spawner biasa<br>
Spawner ini melakukan spawn 1 detik sekali dan digunakan untuk melakukan spawn block bata dan coin. <br>
Block bata: Block ini dibuat menggunakan `Rigidbody2d`. Behavior untuk block bata ini sama seperti fallingFish pada Level 1, yaitu ketika player body memasuki areanya maka akan game over.
Coin: Coin ini dibuat menggunakan `Rigidbody2d`. Behavior untuk coin adalah apabila area coin dimasuki body player, maka coin akan menghilang menggunakan` queue_free()`
- fasterSpawner<br>
fasterSpawner ini melakukan spawn 0.05 detik sekali dan digunakan untuk melakukan spawn block biru.<br>
Block biru: Block ini dibuat menggunakan `Rigidbody2d`. Behavior block ini hanyalah sebagai rigid body biasa, tidak akan ada efek apabila player menyentuh block ini. Tujuan utamanya ada block ini adalah untuk mengganggu player dan membuat rintangan semakin sulit (dalam hal bergerak, menghindari block bata, dan memperoleh coins) dengan banyaknya intensitas jatuhnya block ini. 