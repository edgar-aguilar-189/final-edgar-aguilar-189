# CIT384 Final Exam/Lab
There is three parts to this assignement. The first part is in the same format as Quiz #1.  The quiz provides you with the ability to submit an essay to improve your grade.  The second part requires you to create a Dockerfile that performs a number of tasks.  If you complete, to a satisfactory level, these two parts your final grade could be a C+.  (This does not include the exta points you will received on the essay component if you so choose to do this component.

The third part is provided to allow you to further demostrate you knowledge in SSL and load balancing.  We did not talk about load balancing in class.  Hence, this part requires you to some research to get it done.  Something you will need to be able to do in your professional careers, if you want to be successful.


### Due:
* Dec 15th at 5:00pm
* Note that this is a change from what was stated in class!

* Make sure to commit any and all files used in your Dockerfile

## Part 1:
  1. Clone this repository to your computer.  
  2. Review the "assignment.md" file.
  3. Make a copy of this file, naming it "submission.md".
  4. Edit this file to include your name in the appropriate location.
  5. Add this file to your local repository.
  6. Commit this file to your local repository.
  7. Push the current contents of your local repository to remote repository.

## Note:
  1. Your answers need to be positioned in the file correctly.
     - provide an answer to every line that contains an "answer" comment.
     - placement of your answer needs to be to the left of the "answer" comment.
  2. Use additional spacing to ensure your answer is _easy_ to read.
  3. Add additional information as you feel is necessary.

## Part 2: 
This part we will build a Dockerfile that can build and run an Apache Web Server that incorporates the following tasks:
  1. Create a group named `cit384`
  2. Create 2 users and add both users to the `cit384` group
  3. For both users create index.html files that contain the following:
     1. The username created for the user, e.g., ~steve
     2. A brief paragraph that contains a biography of the user
     3. A little bit of styling, e.g., background color, bold, font color....
     4. Each page must contain an image
  4. Create the following vHost files:
     1. mywebsite.cit384
     2. special.cit384
     3. final.cit384
  5. Create `index.html` files for your `mywebsite.cit384` and `special.cit384` websites and place them in the appropriate location

  6. Create Alias records for both users to allow access to the users index files under the following URLs
     1. http://final.cit384/user1
     2. http://final.cit384/user2

  7. Place a copy of the `submission.md` file in a password protected directory under the `final.cit384` website
     * Create a file named `submission.txt` that contains the password, and place this file in the `/home` directory 

  8. Create a rule to make a permenant redirect from `special.cit384/submission` to `final.cit384/submission`
  9. Create a rule to make a temporary redirect from `mywebsite.cit384/submission` to `final.cit384/submission`
  10. Create a cgi script in one of the users directories that does the following:
      1. adds a custom response field 'x-final.cit384' with the value of the github URL for this class
      2. cat's the other user's index.html file 
   
If you answer all the questions in Part 1 correctly and submit a completed Part 2, your course grade would be C+. 

If you would like to improve your grade to a B or higher, complete the following Part 3.

## Part 3
Continuing from Part 2 update your Dockerfile with the following tasks:
  1. Implement and force HTTPS for all requests to each website
  2. Create a new website (named anything you'd like)
  3. Add load balancer configuration for your new website
  4. Add the following health checks to your load balancer configs:
     1. interval
     3. hcpasses


## Grading
  1. An automated process will be used to expidite the grading of this lab/final exam. 
  2. As such, it is important that you position your answers appropriately. 
