
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
        
        load "data/4WB6.pdb", protein
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
 
        load "data/4WB6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [321,322,312,314,316,317,942,5741,311,2600,305,306,308,2598,342,345,363,485,486,469,361,362,1324,1313,1312,1422,1341,912,1340,1428,1429,1430,1421,1427,889,890,894,5763,5767,325,5747,5761,338,340,1284,1301] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3324,3202,3323,3151,3153,3200,3201,3729,3308,3778,3781,5433,5435,3143,3149,3150,3144,3145,3147,3754,5436,3745,3184,3155,3156,3160,3161,3164,5910,5890,5896,3181,3325,4259,4262,4263,4265,4258,4147,4148,4159,4176,4256,4257,4175,3751,3728,5916,4135,4136] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [5264,5267,5262,5263,5265,2861,2854,5225,5226,5243,5242,5244,4019,5143,3993,5227,2898,3558,3560,2885,2886,2887,2889,2856,2860,2884,2852] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [16,17,21,22,45,46,2407,8,2403,2408,4,719,721,1158,2429,2432,2427,2428,2430,50,48,47,1184,2308] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2231,2269,2273,2266,1208,1209,1701,1212,1699,1730,1733,1210,1216,1180,2243] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [4047,4568,5066,5101,5104,4536,4534,4015,4045,4013,4044,4043,4051,5108,5109] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3911,5334,5336,5337,3810,3854,3878,3811,3844] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3458,3484,4280,3447,3421,3424,3325,4278,4279,3179,3174,3175,3177,3341] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [4389,5915,4392,3180,4291,3425,3451,4383,3403,5922,5924] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        