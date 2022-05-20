export class Smartphone {

    battery = 100;
    
    phoneCall(min) {
        // ogni 2 minuti perdo l'1% di batteria
        if (this.battery <= 0) {
            console.error("Batteria esaurita!");
        } else {
            this.battery = this.battery - min / 2;
            console.log('Chiamata di minuti: ', min);
            console.log('La batteria è ora: ', this.battery);
        }
    }

}