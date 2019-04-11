import React, { Component } from 'react'
import DeleteLink from './DeleteLink'

export default class BlogContainer extends Component {
	state = {
		posts: []
	}

	componentDidMount() {
		this.getAllPosts()
	}

	getAllPosts = () => {
		fetch('/graphql', {
			method: 'POST',
			headers: { 'Content-Type': 'application/json' },
			body: JSON.stringify({
				query: `
					query {
						posts {
							title
							content
							id
						}
					}
				`
			})
		}).then( response => {
			// get the response back and return it as json
			console.log(response)
			return response.json()
		}).then( response => {
			// set the response somewhere accessible to the component
			console.log(response.data)
			this.setState({ posts: response.data.posts })
		})
	}

	render() {
		const posts = this.state.posts

		return (
			<div>
				<h1>Hello again from blogcontainer</h1>
				{posts.map((post, index) => (
					<div key={index}>
						<h2>{post.title}</h2> 
						<DeleteLink postId={post.id} getAllPosts={this.getAllPosts} />
						<p>{post.content}</p>
						<hr />
					</div>
				))}
			</div>
		)
	}
}