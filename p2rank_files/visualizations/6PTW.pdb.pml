
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
        
        load "data/6PTW.pdb", protein
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
 
        load "data/6PTW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4149,4310,4313,4316,4299,4303,4306,4307,4308,6132,6133,6177,6134,6136,4564,4105,4109,4271,4273,4281,4282,4289,4290,4293,4297,4295,4115,4116,4118,4126,5137,5138,4113,4114,4315,4320,4323,4324,4325,5986,6002,6107,6147,6143,6144,6106,4319,4322,4139,4138,4555,4556,4560,5983,5984,5992,5896,4183,4267,4262,4268,6176,6175,5415,4144,4148,4152,4156,4127,4131,5126,4258,4260,5421,5423,4259,4265,5131,5135,5166,5165,5167,4354,6186,6187,5411,5417,5408,5157] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [6205,6207,6252,6590,5925,5926,5918,6183,6184,5916,6147,6145,6146,6149,6116,6115,6150,6155,6226,6119,6568,6569,6118,5896] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [7106,7091,7118,7119,7093,7061,7015,6672,6673,6674,6698,6985,6986,7014,7126] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [5643,5676,5677,5723,5722,4726,4729,5023,5024,5019,5042,5043,5640,5078,5629,5631,5070,4722,4725,4724,5590] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [4889,5295,5335,4898,5337,5293,4762,4935,5087,4936,4937,4892,4893,4896,5354] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [5577,5614,5623,5624,5617,5664,5665,5666,5796,5581,5582,5618,5074,5630,5062,5067,5068,5073,5345,5807,5809] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [7148,4510,5941,5971,4671,4035,4058,4059,5944,5946,4526,4529,4360,4361,5969,5970,4511] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [7044,7046,6835,6836,7081,7083,7043,6856,7045,7047,7022,7023,7024,7026,6891] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [5906,5908,5930,5939,6560,6644,6537,6556,5903,5904,5905,5909,7155,7157,6540,6304,6313,6386,6388] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [4381,5931,5933,5958,4222,4223,5956,5923,5925,5955,5918,6183,6185,6187,6207,6180,6182] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [665,666,668,701,702,703,3165,3167,742,3085,613,615] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [3698,48,3729,3693,3726,3694,84,44,91,57,47] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [4502,4443,5553,5554,5555,5551,5557,5558,4501,5520,5521,5562,5523,4440,4442,4449,4483,5601,5599] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [4403,5487,5488,5525,5527,4401,4425,4501,4202,4203,4204,5509,4200,4213] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [1944,1946,3945,3947,3949,1942,3946,3948,3994] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [6550,6119,6117,6081,6075,6108,6077,6109] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        