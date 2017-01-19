# Dockerized www.webslides.tv

I'm a huge fan of anything other than powerpoint. Actually, I've written about my theory that [PowerPoint is killing our creativity](https://medium.com/matterhorn/ban-powerpoint-before-it-kills-our-creativity-6477b4c5b9ab#.ce1t4c9pl). Any Medium that is not PowerPoint gathers a lot more attention. Why do you ask? Well for starters it is different. Different is good when you are trying to grab the attention of your audience.

## What is Webslides
I discovered WebSlides on Medium and HackerNews almost simultaneously. It is a new HTML presentation framework which is visually awesome! Check out the [Webslides GitHub page](https://github.com/jlantunez/webslides) for all the details.

## Webslides in a Container
This is something I will be using going forward so it was a logical step to containerize it.  The base image of this project is the [Official Alpine NGINX image](https://hub.docker.com/_/nginx/).

The entire project is installed in the NGINX working directory `/usr/share/nginx/html`

## Running the Webslides Container
If you are interested just in kicking the webslides tires run the following command:

`docker run --name webslides -d -p 8080:80 vegasbrianc/webslides`

Once the container is running navigate to [http://0.0.0.0:8080](http://0.0.0.0:8080) This will take you to the webslides demo. Press the down arrow key to navigate through the slides.

## Editing Slides
If you want to use Webslides for a presentation then clone the project to you Docker host machine `git clone https://github.com/jlantunez/webslides.git`

Attach the local slides to the container.

`docker run --name webslides -d -p 8080:80 -v webslides:/usr/share/nginx/html vegasbrianc/webslides`

Now you will be able to edit the slides locally.
