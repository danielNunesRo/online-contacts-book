package com.hmtmcse.ocb

import grails.converters.JSON

class ContactDetailsController {

    ContactDetailsService contactDetailsService
    ContactService contactService

    def showContactDetails(Integer id) {
        println "Chegou no show contactDetails com ID: $id"
        def contact = contactService.get(id)
        println "O contato é: $contact.name"
        println "O contato é: $contact.name"
        if (!contact) {
            redirect(action: "index", controller: "contact")
        } else {
            def contactDetailsList = contactDetailsService.getContactDetailsListByContact(contact)
            render(view: '/contact/details', model: [contact: contact, contactDetailsList: contactDetailsList])
        }
    }

    def create() {
        Contact contact = contactService.get(params.id)
        [contactDetails: contactDetailsService.getContactDetailsListByContact(contact)]
    }

    def delete(Integer id){
        render(contactDetailsService.deleteContactDetails(id) as JSON)
    }
}
