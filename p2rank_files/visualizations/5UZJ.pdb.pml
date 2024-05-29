
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
        
        load "data/5UZJ.pdb", protein
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
 
        load "data/5UZJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4895,4396,4890,3849,3850,3851,3796,4814,3798,3792,6053,6055,4447,4448,4449,4787,4815,6058,4891,4144,6057,4419,4423,4422,3962,4896,4898,4788,4791,3803,3804,3812,3801,3977,4897] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [1204,1594,692,1254,1622,804,1201,1621,1230,1208,1231,2876,2878,2880,1226,1255,2865,638,1698,1697,1203,1056,691,643,645,646,654,655,693,640,634,1256,819,1702,821,1703,1704,1705] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [6264,6265,6266,15,51,53,6275,4287,77,47,48,49,35,36,44,45,12,14,16,3896,9,37,39,40,41,87,121,54,3274,6284,6263,78,3693,6267,6268,6269,6270,3689,3699,3700,3703,3737,3683,111,3340,3341,3266,3335,3334,3348,3349,3272,3276] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [3054,3059,157,197,933,155,158,159,162,925,926,928,931,970,135,140,142,143,144,150,151,154,3076,960,961,3061,924,3087,191,3113,927,930,3587] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [4097,4080,3830,3831,4101,4098,4100,3816,3820,3821,3828,3995,3978,3979,4897,3813,4896,4898,4910,4911,4912,4914,4919,4920,4099] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [4121,4124,4126,6229,4119,4120,4116,4117,4118,4128,4134,4135,3293,4154,4162,4163,4164,4195,3309,3355,3313,3317,3320,3298,3300,429] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [3173,1095,798,780,796,1083,1085,759,778,779,760,1096,1079,1080,1081,3126] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [13,3918,3917,14,16,3894,3891,3892,3938,3955,3956,15,6275,4289,4288] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [3172,736,738,3173,3174,1095,797,798,780,759,778,779,734,760,1096] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [658,821,1703,1704,1705,1583,662,907,1718,1719,1727,1567] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [3423,3465,3464,3466,3438,6110,6183,6180,6114,6105,6111,6121,6138,6171,3426,4328,4331,4327,6192] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [4350,4352,3987,4372,4373,3719,3720,3764,3859,3860,3970] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [4589,4592,5859,5857,5931,5932,5846,5847,4549,4580,5950,5937,5952,4548,4550] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [2016,2544,2547,2553,2523,2527,2543,2537,1980,1981,1496,1982,2019,1477] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        