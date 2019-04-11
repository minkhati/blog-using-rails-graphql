import React, { Component } from 'react'

export default class DeleteLink extends Component {
    handleDelete = () => {
        fetch('/graphql', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json'},
            body: JSON.stringify({
                // Query for mutation
                query: `
                    mutation {
                        deletePost(input: {
                        id: "${this.props.postId}"
                        }) {
                        clientMutationId
                        message
                        }
                    }
                `
            })
        }).then( response => {
            // get the response back and return it as json
            console.log(response)
            return response.json()
        }).then(response => {
            // set the response somewhere accessible to the component
            console.log(response.data.message)
            this.props.getAllPosts()
        })
    }

    render() {
        return (
            <a onClick={this.handleDelete}>
                Delete
            </a>
        )
    }
}