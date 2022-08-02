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

        const dest = "alekmacic123@gmail.com"
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
        const overallPrice = req.query.overallPrice
        const mailOptions = {
            from: 'Flex kurirska sluzba <fporudzbine@gmail.com>', // Something like: Jane Doe <janedoe@gmail.com>
            to: dest,
            subject: 'Stigao vam je zahtev za posiljku:', // email subject
            html: `<p style="font-size: 20px;">Podaci o posiljaocu:</p>
                    <p style="font-size: 12px;">Ime i prezime: ` + senderNameSurname + `</p>
                    <p style="font-size: 12px;">Grad/Opstina: ` + senderCity + `</p>
                    <p style="font-size: 12px;">Adresa: ` + senderAddress + `</p>
                    <p style="font-size: 12px;">Kucni broj: ` + senderHomeNumber + `</p>
                    <p style="font-size: 12px;">Postanski broj: ` + senderPostalNumber + `</p>
                    <p style="font-size: 12px;">Kontakt osoba: ` + senderContact + `</p>
                    <p style="font-size: 12px;">Email: ` + senderEmail + `</p>
                    <p style="font-size: 12px;">Napomena pri preuzimanju: ` + senderNote + `</p>
                    </ br>
                    <p style="font-size: 20px;">Podaci o primaocu:</p>
                    <p style="font-size: 12px;">Ime i prezime: ` + receiverNameSurname + `</p>
                    <p style="font-size: 12px;">Grad/Opstina: ` + receiverCity + `</p>
                    <p style="font-size: 12px;">Adresa: ` + receiverAddress + `</p>
                    <p style="font-size: 12px;">Kucni broj: ` + receiverHomeNumber + `</p>
                    <p style="font-size: 12px;">Postanski broj: ` + receiverPostalNumber + `</p>
                    <p style="font-size: 12px;">Telefon: ` + receiverPhone + `</p>
                    <p style="font-size: 12px;">Kontakt osoba: ` + receiverContact + `</p>
                    <p style="font-size: 12px;">Napomena pri preuzimanju: ` + receiverNote + `</p>
                    </ br>
                    <p style="font-size: 20px;">Detalji posiljke:</p>
                    <p style="font-size: 12px;">Broj paketa: ` + packageNumber + `</p>
                    <p style="font-size: 12px;">Isporuka: ` + deliveryTime + `</p>
                    <p style="font-size: 12px;">Tezina posiljke(kg): ` + deliveryWeight + `</p>
                    <p style="font-size: 12px;">Sadrzaj posiljke: ` + deliveryContent + `</p>
                    <p style="font-size: 12px;">Otkupna vrednost(RSD): ` + deliveryBuyOut + `</p>
                    <p style="font-size: 12px;">Vrednost posiljke: ` + deliveryValue + `</p>
                    <p style="font-size: 12px;">Dodatne usluge: ` + additionalServices + `</p>
                    <p style="font-size: 12px;">Placa isporuku: ` + deliveryPayment + `</p>
                    <p style="font-size: 12px;">Broj žiro-računa: ` + bankAccountNumber + `</p>

                    </ br>
                    <p style="font-size: 20px;">Ukupna cena: ` + overallPrice + `</p>

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
