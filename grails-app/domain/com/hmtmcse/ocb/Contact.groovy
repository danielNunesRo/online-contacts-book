package com.hmtmcse.ocb

class Contact {

    Integer id
    String name
    String image
    Member member

    Date dateCreated
    Date lastUpdated

    Set<ContactDetails> contactDetails
    Set<ContactGroup> contactGroup


    static hasMany = [contactDetails: ContactDetails, contactGroup: ContactGroup]

    static constraints = {
        image(nullable: true, blank: true)
        name(nullable: false, blank: false)
    }

    static mapping = {
        version(false)
        contactDetails(cascade: 'all-delete-orphan')
    }


}
