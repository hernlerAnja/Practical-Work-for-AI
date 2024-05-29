
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/5K33.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/5K33.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [9924,9445,9497,9498,9917,7547,7660,7678,7679,7680,9452,7493,7503,7506,7546,7548,7652,7509,10300,10301,9908,9916,10329,7507,10326,3413,3427,10357,3414,3415,7389,7391,3436,3440,3441,3442,3914,3915,3916,3918,7401,3919,4293,7402,4292,3930,10327,10328,10354,10352,10353,3795,9936,7528,7673,7531,7677] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [7800,7804,7784,7772,8064,8018,8092,8093,8094,8163,7769,7733,7751,7807,8529,8531,9028,7676,7693,7708,7696,7697,8145,7711,7721,7739,9026,9027,7713,7712] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [9518,9567,3548,9519,9535,9520,9536,9617,9966,3602,9651,9652,3611,3568,3588,3598,3599,3653,9569,9570,3547,9091,9093,9128] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3400,7422,7423,3416,3885,3886,4262,4259,4260,4261,7411,6845,6914,6911,6912,6913,6804,4241,4243,4244,4245,6814,6805,6980,6952,6781] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [8116,8118,8249,8265,8114,8131,8132,8210,8553,8554,9052,9053,8115,9479,8616,9495,9512,9517,9529,9519] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [10162,10128,10108,10168,10585,10627,10574,10573,10644,10117,10118,10532] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [10133,10150,10152,10440,10442,10531,10527,10528,10492,10475,10478,10479,10482,10465,10514,10452,10134,10082,10132] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [5998,6002,6003,5512,5514,5562,6001,6011,6027,5507,5550,5506,5937,5551] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [9717,9734,9736,10610,10631,10831,10832,10630,9716,10064] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        