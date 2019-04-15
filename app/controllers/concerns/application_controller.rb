class ApplicationController < ActionController::API
  def encode_token(payload)
   JWT.encode(payload, 'secret')
   # payload {nurse_id: 1}
   # => enaj.fewfwaf.dfadf
 end

 def decode_token
   # if headers -> let's decode it else return nil
   # JWT.decode()
   # no need to check if there are headers because of the begin rescue!!
   begin
     JWT.decode(auth_headers, 'secret')
   rescue
     nil
   end
 end

 def auth_headers
   # check for headers
   request.headers["Authorization"]
   # returns the JWT
 end

 def curr_nurse
   nurse_id = decode_token[0]["nurse_id"]
   Nurse.find(nurse_id)
   # who is the current nurse maybe we don't need to authorize the route but it might be nice to know
   # who the nurse is to see whether or not they can validly access something
 end

 def logged_in
   # is there a curr_nurse
   !!curr_nurse
 end

 def authorized
   # if there is a curr_nurse meaning they've been correctly validated
   # allow them in our application
   # otherwise send an error
   render json: {errors: 'Please log in'} unless logged_in
 end
end
