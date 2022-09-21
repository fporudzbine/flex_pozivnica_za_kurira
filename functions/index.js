const functions = require('firebase-functions');
const admin = require('firebase-admin');
const nodemailer = require('nodemailer');
const cors = require('cors')({origin: true});
admin.initializeApp();

/**
* Here we're using Gmail to send
*/
let transporter = nodemailer.createTransport({
    service: 'gmail',
    auth: {
        user: 'fporudzbine@gmail.com',
        pass: 'qzyexiwfaxkhpgvo'
    }
});

exports.sendMail = functions.https.onRequest((req, res) => {
   cors(req, res, () => {

        // getting dest email by query string

        const dest = "prijemkurir1@gmail.com"
        const senderNameSurname = req.query.senderNameSurname
        const senderCity = req.query.senderCity
        const senderAddress = req.query.senderAddress
        const senderHomeNumber = req.query.senderHomeNumber
        const senderPostalNumber = req.query.senderPostalNumber
        const senderPhone = req.query.senderPhone
        const senderContact = req.query.senderContact
        const senderEmail = req.query.senderEmail
        const senderNote = req.query.senderNote
        const receiverNameSurname = req.query.receiverNameSurname
        const receiverCity = req.query.receiverCity
        const receiverAddress = req.query.receiverAddress
        const receiverHomeNumber = req.query.receiverHomeNumber
        const receiverPostalNumber = req.query.receiverPostalNumber
        const receiverPhone = req.query.receiverPhone
        const receiverContact = req.query.receiverContact
        const receiverNote = req.query.receiverNote
        const deliveryContent = req.query.deliveryContent
        const deliveryBuyOut = req.query.deliveryBuyOut
        const deliveryValue = req.query.deliveryValue
        const deliveryWeight = req.query.deliveryWeight
        const deliveryPayment = req.query.deliveryPayment
        const deliveryTime = req.query.deliveryTime
        const additionalServices = req.query.additionalServices
        const packageNumber = req.query.packageNumber
        const bankAccountNumber = req.query.bankAccountNumber
        const initialValueBuyOut = req.query.initialValueBuyOut
        const overallPrice = req.query.overallPrice
        const overallPriceWithBuyOutLabel = req.query.overallPriceWithBuyOutLabel
        const mailOptions = {
            from: 'Flex kurirska sluzba <fporudzbine@gmail.com>', // Something like: Jane Doe <janedoe@gmail.com>
            to: dest,
            subject: 'Stigao vam je zahtev za posiljku:', // email subject
            html: `<p style="font-size: 20px;font-weight: bold;">Podaci o pošiljaocu:</p>
                    <p><span style="font-size: 12px;font-weight: bold;">Ime i prezime:</span> ` + senderNameSurname + `</p>
                    <p><span style="font-size: 12px;font-weight: bold;">Grad/Opština:</span> ` + senderCity + `</p>
                    <p><span style="font-size: 12px;font-weight: bold;">Adresa:</span> ` + senderAddress + `</p>
                    <p><span style="font-size: 12px;font-weight: bold;">Kućni broj:</span> ` + senderHomeNumber + `</p>
                    <p><span style="font-size: 12px;font-weight: bold;">Poštanski broj:</span> ` + senderPostalNumber + `</p>
                    <p><span style="font-size: 12px;font-weight: bold;">Kontakt osoba:</span> ` + senderContact + `</p>
                    <p><span style="font-size: 12px;font-weight: bold;">Email:</span> ` + senderEmail + `</p>
                    <p><span style="font-size: 12px;font-weight: bold;">Napomena pri preuzimanju:</span> ` + senderNote + `</p>
                    </ br>
                    <p style="font-size: 20px;">Podaci o primaocu:</p>
                    <p><span style="font-size: 12px;font-weight: bold;">Ime i prezime:</span> ` + receiverNameSurname + `</p>
                    <p><span style="font-size: 12px;font-weight: bold;">Grad/Opština:</span> ` + receiverCity + `</p>
                    <p><span style="font-size: 12px;font-weight: bold;">Adresa:</span> ` + receiverAddress + `</p>
                    <p><span style="font-size: 12px;font-weight: bold;">Kućni broj:</span> ` + receiverHomeNumber + `</p>
                    <p><span style="font-size: 12px;font-weight: bold;">Poštanski broj:</span> ` + receiverPostalNumber + `</p>
                    <p><span style="font-size: 12px;font-weight: bold;">Telefon:</span> ` + receiverPhone + `</p>
                    <p><span style="font-size: 12px;font-weight: bold;">Kontakt osoba:</span> ` + receiverContact + `</p>
                    <p><span style="font-size: 12px;font-weight: bold;">Napomena pri preuzimanju:</span> ` + receiverNote + `</p>
                    </ br>
                    <p style="font-size: 20px;font-weight: bold;">Detalji pošiljke:</p>
                    <p><span style="font-size: 12px;font-weight: bold;">Broj paketa:</span> ` + packageNumber + `</p>
                    <p><span style="font-size: 12px;font-weight: bold;">Isporuka:</span> ` + deliveryTime + `</p>
                    <p><span style="font-size: 12px;font-weight: bold;">Težina pošiljke(kg):</span> ` + deliveryWeight + `</p>
                    <p><span style="font-size: 12px;font-weight: bold;">Sadržaj pošiljke:</span> ` + deliveryContent + `</p>
                    <p><span style="font-size: 12px;font-weight: bold;">Ukupna otkupnina:</span> ` + initialValueBuyOut + `</p>
                    <p><span style="font-size: 12px;font-weight: bold;">Otkupna vrednost(RSD):</span> ` + deliveryBuyOut + `</p>
                    <p><span style="font-size: 12px;font-weight: bold;">Vrednost pošiljke:</span> ` + deliveryValue + `</p>
                    <p><span style="font-size: 12px;font-weight: bold;">Dodatne usluge:</span> ` + additionalServices + `</p>
                    <p><span style="font-size: 12px;font-weight: bold;">Plaća isporuku:</span> ` + deliveryPayment + `</p>
                    <p><span style="font-size: 12px;font-weight: bold;">Broj žiro-računa:</span> ` + bankAccountNumber + `</p>

                    </ br>
                    <p style="font-size: 20px;font-weight: bold;">Ukupna cena: ` + overallPrice + `</p>
                    <p style="font-size: 20px;font-weight: bold;">Ukupna cena sa otkupom: ` + overallPriceWithBuyOutLabel + `</p>

            `
// email content in HTML
//                                      };
                                    };
        // returning result
        return transporter.sendMail(mailOptions, (erro, info) => {
            if(erro){
                return res.send(erro.toString());
            }
            return res.send('Sended');
        });
    });
});
