
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
        
        load "data/5KKT.pdb", protein
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
 
        load "data/5KKT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3988,4902,4906,4901,3861,3862,4458,4459,4460,4798,3803,3809,6118,6121,4408,4407,4155,3973,4825,4826,4412,4430,4434,3807,4453,6115,6117,6102,6113,4433,3814,3815,4907,4909,3812,3990] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [1203,1204,693,691,692,643,1605,1697,1594,1621,1622,804,1256,640,2909,634,638,2905,2907,1698,819,820,821,951,1699,1702,1703,1705,1208,1226,1230,1231,1229,1056,646] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [77,78,111,109,6338,6340,6342,37,3694,41,6341,6336,3717,6337,4298,87,54,6357,6358,51,53,6348,45,9,44,14,15,16,3359,3360,6343,3700,3710,3711,3714,3277,3283,3285,3287,3302,3305,3306,3351,3352,3346] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [3824,4907,4908,4909,4769,4771,4786,4787,4156,4006,4112,4113,3989,3990,4111,4091,3827,3831,3832,3836,3839,3841,3842,5055,4107,4108,4110,4922,4924,4930,4931,4089,4090,4109,4906] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [931,925,926,927,928,930,3070,3072,3065,933,932,929,160,162,3600,3598,177,191,3087,151,197,970,971,961,3097,135,140,143,144,142,159,141] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [431,444,3328,3329,3330,4129,429,4135,4137,4130,4132,4127,4139,6295,3324,3366,3304,3309,3319,3320,4206,3311,4173,4174,4175,6302,4128,4165] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [819,820,821,837,908,1703,1704,1705,1565,1567,1583,1582,662,670,672,658,655,1857,1851,1719,1720,1718,1726,904,905,906] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [876,877,888,3541,3565,894,3048,3047,3059,3061] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3184,780,1081,1083,760,778,779,3136,3137,3159,1095,1096,1079,1080,798,796] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [268,1135,3035,1138,1134,2948,2957,306,2964,2953,2954,2949,264,265,308,280,3026,3023,266,3032,3033] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [4300,14,15,16,3947,3948,3949,3967,3929,6348,4299,3905,3907] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        